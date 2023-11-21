import 'package:flutter/material.dart';
import 'package:leitor_ebooks/src/api/models/book_model.dart';
import 'package:leitor_ebooks/src/services/book_service.dart';

class BookListPage extends StatefulWidget {
  final BookService bookService;

  const BookListPage({super.key, required this.bookService});

  @override
  State<BookListPage> createState() => _BookListPageState();
}

class _BookListPageState extends State<BookListPage> {
  late Future<List<Book>> _booksFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _booksFuture = widget.bookService.getBooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Livros'),
      ),
    );
  }
}
