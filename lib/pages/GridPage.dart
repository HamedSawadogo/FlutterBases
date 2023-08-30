import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmJCYxjdmF_urv4zjS0IZIbrf-IuEf-ErnZw&usqp=CAU",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://hips.hearstapps.com/hmg-prod/images/couple-caption-john-lennon-1675271941.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9aFCwjNYF4bAVA1UqAjaF_VpQMT2Ej2lmXAMy4rGqHcbvx-NVfDUXRw79MUXfTOjxpl8&usqp=CAU",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDnSJoq-Z0cCLzET2Fo-8b2RZmMjDXrRQOCk28o1znOnvfqiuAPyk86HadPBKWVMs_woE&usqp=CAU",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmJCYxjdmF_urv4zjS0IZIbrf-IuEf-ErnZw&usqp=CAU",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://as2.ftcdn.net/jpg/05/56/97/95/220_F_556979515_E2YzoCEnvAFqvmkDZ6wFlhpNC3BWQmuj.jpg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9aFCwjNYF4bAVA1UqAjaF_VpQMT2Ej2lmXAMy4rGqHcbvx-NVfDUXRw79MUXfTOjxpl8&usqp=CAU",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDnSJoq-Z0cCLzET2Fo-8b2RZmMjDXrRQOCk28o1znOnvfqiuAPyk86HadPBKWVMs_woE&usqp=CAU",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmJCYxjdmF_urv4zjS0IZIbrf-IuEf-ErnZw&usqp=CAU",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
