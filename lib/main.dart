import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testbases/models/Book.dart';
import 'package:testbases/provider/BookProvider.dart';
import 'package:testbases/widgets/BookDetails.dart';
import 'package:testbases/widgets/Details.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => BookProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // BookProvider provider = Provider.of<BookProvider>(context, listen: false);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Provider',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Books Page"),
          actions: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BookDetail(),
                ));
              },
              child: Stack(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BookDetail(),
                        ));
                      },
                      icon: const Icon(Icons.shopping_cart_rounded)),
                  Positioned(
                    right: 3,
                    top: 1,
                    child: Container(
                      height: 22,
                      width: 22,
                      //color: Colors.amber,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.purple),
                      child: Center(
                        child: Text(
                          Provider.of<BookProvider>(context)
                              .books
                              .length
                              .toString(),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: Book.books().length,
          itemBuilder: (context, index) {
            Book currentBook = Book.books()[index];
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
