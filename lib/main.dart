import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  var a = 0;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),
          onPressed: (){
            a++;
            print(a);
          },
        ),
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, i){
            return hawawa;
          },
        ),
        bottomNavigationBar: BottomBarCus(),
      )
    );

  }
}

var hawawa = Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Row(

    children: [

      Icon(Icons.contact_page_rounded),

      Text('홍길동'),

    ],

  ),
);

class BottomBarCus extends StatelessWidget {
  const BottomBarCus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.phone),
            Icon(Icons.message),
            Icon(Icons.contact_page)
          ],
        ),
      ),


    );
  }
}
