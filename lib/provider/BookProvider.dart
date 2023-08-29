import 'package:flutter/cupertino.dart';
import 'package:testbases/models/Book.dart';

class BookProvider extends ChangeNotifier {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    notifyListeners();
  }

  void removeBook(int bookIndex) {
    books.removeAt(bookIndex);
    notifyListeners();
  }

  Book getBook(int bookIndex) {
    return books[bookIndex];
  }
}
