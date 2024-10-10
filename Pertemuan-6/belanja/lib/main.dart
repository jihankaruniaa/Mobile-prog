import 'package:belanja/pages/item_page.dart';
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => HomePage(),
        ),
        GoRoute(
          path: '/item',
          builder: (context, state) {
            final item = state.extra as Item; // Mengambil data item
            return ItemPage(item: item); // Meneruskan item ke ItemPage
          },
        ),
      ],
    );

    return MaterialApp.router(
      title: 'Belanja App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: _router, // Menghubungkan konfigurasi router go_router
    );
  }
}