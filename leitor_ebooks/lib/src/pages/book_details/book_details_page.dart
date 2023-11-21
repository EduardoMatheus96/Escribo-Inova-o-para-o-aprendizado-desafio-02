// No arquivo src/pages/book_detail/book_detail_page.dart

import 'package:flutter/material.dart';

class BookDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Livro'),
      ),
      body: Center(
        child: Text('Página de Detalhes do Livro'),
      ),
    );
  }
}
