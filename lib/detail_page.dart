import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List data = ModalRoute.of(context)!.settings.arguments as List;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Images",
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
      body: Center(
        child: GridView.extent(
          maxCrossAxisExtent: 300,
          padding: const EdgeInsets.all(8),
          primary: false,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  data[1],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  data[2],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  data[3],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  data[4],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  data[5],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
