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
        appBar: AppBar(
          actions: [Icon(Icons.add)],
          leading: Icon(Icons.ac_unit_sharp),
          title: Text(
              '피드',
            style: TextStyle(fontWeight: FontWeight.w800)

          ),
        ),

        body: Align(
          alignment: Alignment.topRight,
          child: Column(
            children: [

              SizedBox(
                child: Text('안녕안영',
                  style: TextStyle(
                    color: Color(0xffc68181),
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),

              SizedBox(
                child: ElevatedButton(
                  child: Text('dd') ,
                  onPressed: (){},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)
                  ),
                )
              ),

              Container(
                width: 50, height: 50,
                margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  color: Colors.indigoAccent
                ),
                child: Text(
                    style: TextStyle(color: Colors.white),
                    'ddd'),
              ),

              Container(
                width: 150, height: 50,
                margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    color: Colors.indigoAccent
                ),
                child: Text(
                    style: TextStyle(color: Colors.white),
                    'ddd'),
              ),
            ],
          ),
        ),



        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone, size: 30),
                Icon(Icons.message, size: 30),
                Icon(Icons.contact_page, size: 30)
              ],
            ),
          ),


        ),
      )
    );
  }
}
