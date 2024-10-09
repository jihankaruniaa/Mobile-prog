import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'Belanja App',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    initialRoute: '/', // Halaman awal
    routes: {
      '/': (context) => HomePage(), // Route untuk HomePage
      '/item': (context) => ItemPage(), // Route untuk ItemPage
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belanja App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Set route awal
      routes: {
        '/': (context) => HomePage(), // Route untuk HomePage
        '/item': (context) => ItemPage(), // Route untuk ItemPage
      },
    );
  }
}