import 'package:flutter/material.dart';
import 'package:leitor_ebooks/src/services/book_service.dart';
import 'routes/routes.dart';
import 'themes/light_theme.dart';
import 'themes/dark_theme.dart';

class MyApp extends StatelessWidget {
  final BookService bookService;
  const MyApp({super.key, required this.bookService});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: AppRoutes.books,
      routes: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
