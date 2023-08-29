import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testbases/provider/CounterProvider.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("CompteurApp"),
          ),
          body: Center(
            child: Consumer<CounterProvider>(
              builder: (context, value, child) {
                return Text(
                  "Valeur==>${value.compteur}",
                  style: const TextStyle(fontSize: 28),
                );
              },
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  CounterProvider pr =
                      Provider.of<CounterProvider>(context, listen: false);
                  pr.incrementer();
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(
                width: 20,
              ),
              FloatingActionButton(
                onPressed: Provider.of<CounterProvider>(context, listen: false)
                    .decrementer,
                child: const Icon(Icons.remove),
              )
            ],
          ),
        ));
  }
}
