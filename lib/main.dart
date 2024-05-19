import 'package:flutter/material.dart';


void main() {
 runApp(MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.purple
  ),
  home: HomePage()
 ));
} 


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
var count = 0;

void increment () {
  print(count);
count++;
setState(() {});
}

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: const Text("Meu primeiro App"),
    ),
    body:  Center(
      child: Text("Contador\n$count",
      textAlign: TextAlign.center,
      )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { increment(); },
        child: const Icon(Icons.add),
      ),
  );
    throw UnimplementedError();
  }
}