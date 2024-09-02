import 'package:flutter/material.dart';
import 'package:recipe/pages/detail_page.dart';
import 'package:recipe/pages/home_page.dart';
import 'package:recipe/pages/fav_page.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'detail_page': (context) => DetailPage(),
        'fav_page': (context) => FavPage(),

      },
    );
  }
}