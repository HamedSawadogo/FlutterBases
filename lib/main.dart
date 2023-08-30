import 'package:flutter/material.dart';
import 'package:testbases/pages/GridPage.dart';

void main() {
  runApp(MyApp());
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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _todoController = TextEditingController();

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
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => GridPage(),
                ));
              },
              icon: const Icon(
                Icons.home,
                size: 29,
              )),
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
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                height: 60,
                width: 180,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmJCYxjdmF_urv4zjS0IZIbrf-IuEf-ErnZw&usqp=CAU",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                height: 60,
                width: 180,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://hips.hearstapps.com/hmg-prod/images/couple-caption-john-lennon-1675271941.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                height: 60,
                width: 180,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9aFCwjNYF4bAVA1UqAjaF_VpQMT2Ej2lmXAMy4rGqHcbvx-NVfDUXRw79MUXfTOjxpl8&usqp=CAU",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                height: 60,
                width: 180,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDnSJoq-Z0cCLzET2Fo-8b2RZmMjDXrRQOCk28o1znOnvfqiuAPyk86HadPBKWVMs_woE&usqp=CAU",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                height: 60,
                width: 180,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmJCYxjdmF_urv4zjS0IZIbrf-IuEf-ErnZw&usqp=CAU",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: ListView.builder(
            itemCount: todoData.length,
            itemBuilder: (context, index) {
              final Map<String, String> currentTodo = todoData[index];
              return ListTile(
                title: Text(currentTodo['todo']!),
                trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        todoData.removeWhere((element) =>
                            element["todo"] == currentTodo['todo']);
                      });
                    }),
                subtitle: Text(currentTodo['date']!),
              );
            },
          ),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Map<String, String> newTask = Map();
          if (!_todoController.text.isEmpty) {
            newTask['todo'] = _todoController.text;
            newTask['date'] = DateTime.now().toString();
            setState(() {
              todoData.add(newTask);
              _todoController.text = "";
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
