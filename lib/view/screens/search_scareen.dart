import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rick_morty/bloc/ch_bloc.dart';
import 'package:rick_morty/data/models/character.dart';
import 'package:rick_morty/view/widgets/custom_list_tile.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late Character _currentCharacter =
      const Character(results: [], info: Info(count: 1, pages: 1));
  List<Results> _currentResults = [];
  int _currentPage = 1;
  String _currentSearchStr = "";
  final RefreshController refreshController = RefreshController();

  @override
  void initState() {
    if (_currentResults.isEmpty) {
      context
          .read<CharacterBloc>()
          .add(const CharacterEvents.fetch(name: "", page: 1));
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CharacterBloc>().state;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, bottom: 10, top: 15),
          child: TextField(
            style: const TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(204, 31, 30, 30),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                hintText: "Поиск по имени",
                hintStyle: const TextStyle(color: Colors.white)),
            onChanged: (value) {
              _currentPage = 1;
              _currentResults = [];
              _currentSearchStr = value;
              context
                  .read<CharacterBloc>()
                  .add(CharacterEvents.fetch(name: value, page: _currentPage));
            },
          ),
        ),
        Expanded(
            child: SmartRefresher(
          enablePullUp: true,
          controller: refreshController,
          onLoading: () {
            _currentPage++;
            if (_currentPage <= _currentCharacter.info.pages) {
              context.read<CharacterBloc>().add(CharacterEvents.fetch(
                  name: _currentSearchStr, page: _currentPage));
            } else {
              print("refresh controller cancel");
              refreshController.loadNoData();
            }
            refreshController.loadComplete();
          },
          child: state.when(
              loading: () {
                return const SizedBox();
              },
              loaded: (characterLoaded) {
                _currentCharacter = characterLoaded;
                _currentResults.addAll(_currentCharacter.results);
                return getCharacters(_currentResults);
              },
              error: () => const Text("Nothing found......")),
        ))
      ],
    );
  }

  Widget getCharacters(List<Results> currentResults) {
    return ListView.separated(
      itemCount: currentResults.length,
      separatorBuilder: (_, index) => const SizedBox(
        height: 5,
      ),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        final result = currentResults[index];
        return Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 3, bottom: 3),
            child: CustomListTile(result: result));
      },
    );
  }
}
