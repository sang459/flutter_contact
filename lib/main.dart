import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 0;
  var name = ['거북이', '두루미', '동방삭'];
  var LikeCount = [0,0,0];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),
          onPressed: (){
            setState(() {
              a++;
            });
            print(a);
          },
        ),
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, i){
            return Row(
              children: [
                Flexible(
                    flex: 7,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5,0,5,0),
                          child: Text(LikeCount[i].toString()),
                        ),
                        Icon(Icons.contact_page_rounded),
                        Text(name[i]),
                      ],
                    )
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Flexible(
                    flex: 3,
                    child: ElevatedButton(
                      child: Text('조아요'),
                      onPressed: (){
                        setState(() {
                          LikeCount[i] ++;
                        });
                      },
                    )
                  ),
                )
              ],
            );


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
