import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty/bloc/ch_bloc.dart';
import 'package:rick_morty/data/constants/const_api.dart';
import 'package:rick_morty/view/screens/search_scareen.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  final characterApiConst = CharacterApiConst();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: const Text(
          "Rick And Morty",
          style: TextStyle(
              fontSize: 24,
              fontFamily: AutofillHints.addressCity,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocProvider(
        create: (context) => CharacterBloc(characterRepo: characterApiConst),
        child: Container(
          decoration: const BoxDecoration(color: Colors.black12),
          child: const SearchPage(),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home,
              size: 40,
            ),
            Icon(
              Icons.favorite,
              size: 40,
            )
          ],
        ),
      ),
    );
  }
}
