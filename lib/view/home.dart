import 'package:flutter/material.dart';
import 'package:rick_morty/data/constants/const_api.dart';

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
      body: const Column(
        children: [Text("data")],
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
