import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testbases/provider/CounterProvider.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body:Consumer<CounterProvider>(
          builder: (context, value, child) {
            return Center(
              child:Text("Current value=> ${value.compteur}"),
            );
          },
        )
    );
  }
}
