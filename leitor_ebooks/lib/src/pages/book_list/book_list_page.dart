import 'package:flutter/material.dart';
import 'package:leitor_ebooks/src/api/models/book_model.dart';
import 'package:leitor_ebooks/src/services/book_service.dart';
import 'package:leitor_ebooks/src/widgets/book_tile.dart';

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
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Lista de Livros'),
        // ),
        body: FutureBuilder(
          future: _booksFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Erro: ${snapshot.error}'),
              );
            } else {
              final books = snapshot.data!;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Navegar para lista de livros ...
                        },
                        child: const Text('Livros'),
                      ),
                      const SizedBox(width: 80),
                      ElevatedButton(
                        onPressed: () {
                          // Navegar para lista de favoritos,
                        },
                        child: const Text('Favoritos'),
                      ),
                    ],
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: books.length,
                      itemBuilder: (context, index) {
                        final book = books[index];
                        return BookTile(
                          book: book,
                          isFavorite:
                              false, // Falta criar o metodo para definir isso ainda
                          onFavoriteTap: () {
                            // Implementar logica para favoritar um livro ...
                          },
                        );
                      },
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
