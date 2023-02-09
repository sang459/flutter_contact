import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            hawawa, hawawa, hawawa
          ],
        ),
        bottomNavigationBar: BottomAppBar(

        ),
      )

    );

  }
}

var hawawa = Row(
  children: [
    Icon(Icons.contact_page_rounded),
    Text('홍길동'),
  ],
)

class ShopItem extends StatelessWidget {
  const ShopItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Text('gd'),
    );
  }
}
