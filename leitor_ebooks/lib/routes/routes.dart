import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:leitor_ebooks/src/pages/book_list/book_list_page.dart';

import '../src/pages/book_details/book_details_page.dart';
import '../src/pages/favorites/favorites_page.dart';
import '../src/services/book_service.dart';

class AppRoutes {
  static const String books = '/books';
  static const String details = '/details';
  static const String favorites = '/favorites';

  static final Map<String, WidgetBuilder> routes = {
    books: (context) => BookListPage(bookService: BookService(Dio())),
    details: (context) => BookDetailPage(),
    favorites: (context) => FavoritesPage(),
  };
}
