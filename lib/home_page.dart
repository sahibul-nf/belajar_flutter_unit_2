import 'package:belajar_flutter_unit_2/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Flutter"),
        centerTitle: false,
        backgroundColor: Colors.teal,
        actions: const [
          Icon(Icons.search),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFF95BDFF),
                  child: Center(
                    child: Text("Hello World"),
                  ),
                ),
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SecondPage();
                  },
                ),
              );
            },
            child: Text("Pindah Halaman"),
          )
        ],
      ),
    );
  }
}
