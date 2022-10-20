import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ListTile',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> _items = List.generate(
      10,
      (index) =>
          {"id": index, "title": "Item $index", "subtitle": "Subtitle $index"});

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListTileTheme(
      contentPadding: const EdgeInsets.all(15),
      iconColor: Colors.red,
      textColor: Colors.black54,
      tileColor: Colors.yellow[100],
      style: ListTileStyle.list,
      dense: true,
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (_, index) => Card(
          margin: const EdgeInsets.all(10),
          child: ListTile(
            title: Text(_items[index]['title']),
            subtitle: Text(_items[index]['subtitle']),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.add_box)),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
