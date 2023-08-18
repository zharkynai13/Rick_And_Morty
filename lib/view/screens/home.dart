import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty/bloc/ch_bloc.dart';
import 'package:rick_morty/data/constants/const_api.dart';
import 'package:rick_morty/data/models/episode.dart';
import 'package:rick_morty/view/screens/favorite.dart';
import 'package:rick_morty/view/screens/search_scareen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      body: Builder(builder: (_) {
        if (_selectedIndex == 0) {
          return const SearchPage();
        } else if (_selectedIndex == 1) {
          return const FavoritePage();
        }
        return const SizedBox();
      }),
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
