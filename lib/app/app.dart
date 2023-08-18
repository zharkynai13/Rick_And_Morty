import 'package:flutter/material.dart';
import 'package:rick_morty/view/screens/favorite.dart';

import '../view/screens/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rick and Morty',
      theme: ThemeData(
        // brightness: Brightness.light,
        primaryColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(
        title: 'Главная',
      ),
      routes: {
        '/favorite': (context) => FavoritePage(),
      },
    );
  }
}
