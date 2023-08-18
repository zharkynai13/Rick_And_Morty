import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rick_morty/bloc/ch_bloc.dart';
import 'package:rick_morty/data/models/character.dart';
import 'package:rick_morty/view/widgets/list_view.dart';

import '../../data/constants/const_api.dart';

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
  final ScrollController scrollController = ScrollController();

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
    return BlocProvider(
      create: (context) => CharacterBloc(characterRepo: CharacterApiConst()),
      child: BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) {
          return Container(
              decoration:
              const BoxDecoration(color: Color.fromARGB(31, 22, 120, 240)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.only(
                        left: 16, right: 16, bottom: 10, top: 15),
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
                            .add(CharacterEvents.fetch(
                            name: value, page: _currentPage));
                      },
                    ),
                  ),
                  Expanded(
                      child: SmartRefresher(
                        enablePullUp: true,
                        enablePullDown: false,
                        controller: refreshController,
                        onLoading: () {
                          _currentPage++;
                          if (_currentPage <= _currentCharacter.info.pages) {
                            context.read<CharacterBloc>().add(CharacterEvents
                                .fetch(
                                name: _currentSearchStr, page: _currentPage));
                          } else {
                            refreshController.loadNoData();
                          }
                        },
                        child: state.when(
                            loading: () {
                              return const SizedBox();
                            },
                            loaded: (characterLoaded) {
                              _currentCharacter = characterLoaded;
                              _currentResults.addAll(_currentCharacter.results);

                              refreshController.loadComplete();
                              return getCharacters(_currentResults);
                            },
                            error: () => const Text("Nothing found......")),
                      ))
                ],
              )
          );
        },
      ),
    );
  }
}
