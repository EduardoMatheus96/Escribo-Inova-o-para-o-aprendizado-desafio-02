import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:leitor_ebooks/app.dart';

import 'src/services/book_service.dart';

void main() {
  runApp(MyApp(bookService: BookService(Dio())));
}
