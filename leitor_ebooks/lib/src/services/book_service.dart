import "dart:convert";
import 'package:dio/dio.dart';
import '../api/models/book_model.dart';

class BookService {
  final Dio _dio;

  BookService(this._dio);

  Future<List<Book>> getBooks() async {
    try {
      final response = await _dio.get('https://escribo.com/books.json');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => Book.fromJson(json)).toList();
      } else {
        // Lida com o erro na resposta da api...
        throw Exception('Erro na solicitação: ${response.statusCode}');
      }
    } catch (e) {
      // Lida com o erro
      throw Exception('Erro de conexao: $e');
    }
  }
}
