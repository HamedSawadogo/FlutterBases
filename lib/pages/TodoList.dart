import 'package:flutter/material.dart';

class MyTodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // BookProvider provider = Provider.of<BookProvider>(context, listen: false);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Provider',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const MyTodoListPage());
  }
}

class MyTodoListPage extends StatefulWidget {
  const MyTodoListPage({Key? key}) : super(key: key);

  @override
  State<MyTodoListPage> createState() => _HomePageState();
}

class _HomePageState extends State<MyTodoListPage> {
  TextEditingController _todoController = TextEditingController();

  List<Map<String, String>> todoData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HommePage"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 29,
              )),
          const SizedBox(
            width: 20,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                size: 29,
              )),
        ],
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: _todoController,
            decoration: InputDecoration(
                hintText: "ajouter une tache",
                suffixIcon: const Icon(Icons.text_decrease),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                )),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: todoData.length,
            itemBuilder: (context, index) {
              final Map<String, String> currentTodo = todoData[index];
              return ListTile(
                title: Text(currentTodo['todo']!),
                trailing: Icon(Icons.delete),
                subtitle: Text(currentTodo['date']!),
              );
            },
          ),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Map<String, String> newTask = Map();
          newTask['todo'] = _todoController.text;
          newTask['date'] = DateTime.now().toString();
          setState(() {
            todoData.add(newTask);
            _todoController.text = "";
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
