import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty/bloc/ch_bloc.dart';
import 'package:rick_morty/data/constants/const_api.dart';
import 'package:rick_morty/view/screens/search_scareen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final characterApiConst = CharacterApiConst();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Container(
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/rrr.png")),
            ),
          ),
        ),
        elevation: 0,
      ),
      body: BlocProvider(
        create: (context) => CharacterBloc(characterRepo: characterApiConst),
        child: Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(31, 22, 120, 240)),
          child: const SearchPage(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Episode',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 49, 148, 241),
        onTap: _onItemTapped,
      ),
    );
  }
}
