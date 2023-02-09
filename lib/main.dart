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
          backgroundColor: Color(0xffbbb9b9),
          foregroundColor: Colors.black,
          leadingWidth: 120,
          leading: Padding(
            padding: EdgeInsets.fromLTRB(10,0,0,0),
            child: Row(children: [
              Text('금호동3가'),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down))
            ]
            ),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
            IconButton(onPressed: (){}, icon: Icon(Icons.alarm))
          ],
        ),
        body: Container(
          height: 210, width: double.infinity,
          color: Color(0xffffffff),
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                color: Color(0xffffffff),
                width: 150, height: 150,
                child: Image.asset('assets/sample.jpg')
              ),
              Container(
                color: Color(0xffffffff),
                width: 300, height: 200, //여기 width를 화면크기에 딱맞게 설정하는법?
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Text('캐논 DSLR 100D (뭐시꺵이 뭐시꺵이 포함포함 다포함)',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400
                            ),
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0,0,0,5),
                        child: Text('성동구행당동 개지랄',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff6e6e6e)
                          ),
                        ),
                      ),
                      Text('69만원',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(icon: Icon(Icons.heart_broken),
                            onPressed: (){},
                            iconSize: 20),
                          Text('4')
                        ],
                      )
                    ],
                  ),
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
