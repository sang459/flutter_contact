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
        appBar: AppBar( title: Text('피드'), ),
        body: Container(
          height: 200, width: double.infinity,
          color: Color(0xff8a53ea),
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                color: Color(0xffacf1c9),
                width: 150, height: 150,
                child: Text('1'),
              ),
              Container(
                color: Color(0xfffae48d),
                width: 300, height: 150, //여기 width를 화면크기에 딱맞게 설정하는법?
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        child: Text('제목', style: )
                    ),
                    Text('성동구행당동 개지랄'),
                    Text('69만원'),
                    Icon(Icons.heart_broken)
                  ],
                )

              )
            ],

          ),
        ),

        bottomNavigationBar: BottomAppBar(
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


        ),
      )
    );
  }
}
