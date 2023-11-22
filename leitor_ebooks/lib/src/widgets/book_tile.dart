import 'package:flutter/material.dart';
import '../api/models/book_model.dart';

class BookTile extends StatelessWidget {
  final Book book;
  final bool isFavorite;
  final VoidCallback onFavoriteTap;

  const BookTile({
    super.key,
    required this.book,
    required this.isFavorite,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // Colocar a rota de descrição do livro ...
        },
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  // Capa do Livro
                  Image.network(
                    book.coverUrl,
                    height: 150,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  // Marcador Favorito ...
                  Positioned(
                    right: 0,
                    child: IconButton(
                      onPressed: onFavoriteTap,
                      icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border),
                      color: isFavorite ? Colors.red : null,
                    ),
                  ),
                ],
              ),
              // Titulo e Autor
              Text(book.title),
              Text(book.author),
            ],
          ),
        ));
  }
}
