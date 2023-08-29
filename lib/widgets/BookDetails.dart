import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "../models/Book.dart";
import "../provider/BookProvider.dart";

class BookDetail extends StatelessWidget {
  const BookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount:
              Provider.of<BookProvider>(context, listen: false).books.length,
          itemBuilder: (context, index) {
            Book currentBook = Provider.of<BookProvider>(context, listen: false)
                .getBook(index);
            return ListTile(
              onTap: () {
                Provider.of<BookProvider>(context, listen: false)
                    .addBook(currentBook);
              },
              title: Text(
                currentBook.author,
                style: const TextStyle(fontSize: 18),
              ),
              leading: Image.network(currentBook.imageUrl),
              trailing: const Icon(
                Icons.add_shopping_cart,
                color: Colors.red,
              ),
              subtitle: Text(currentBook.date.toString()),
            );
          },
        ));
  }
}
