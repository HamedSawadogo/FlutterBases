import 'package:flutter/material.dart';
import 'package:testbases/models/User.dart';
import 'package:testbases/pages/UserHomePage.dart';
import 'package:testbases/pages/whatApp/ChatUser.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // BookProvider provider = Provider.of<BookProvider>(context, listen: false);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Provider',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    User.fetchUsers().then((value) => print(value));
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.people)),
            Tab(
              child: Row(
                children: [
                  const Text("CHATS"),
                  Container(
                    margin: EdgeInsets.only(left: 4),
                    height: 16,
                    width: 15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.white),
                    child: const Center(
                      child: Text(
                        "3",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Tab(
              child: Text("calls"),
            ),
            const Tab(
              child: Text("status"),
            ),
          ]),
          actions: [
            const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "ViBox",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 17),
                  ),
                )),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: const TabBarView(children: [
          UsersHomePage(),
          Text("hello"),
          Text("hello"),
          Text("Hello")
        ]),
        floatingActionButton:
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.message)),
      ),
    );
  }
}
