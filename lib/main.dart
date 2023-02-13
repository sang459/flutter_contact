import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home: MyApp()
      )
  );
}



class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var apple = 3;
  var pear = 'pear';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        floatingActionButton:
        FloatingActionButton(
          onPressed: (){
            showDialog(
                context: context,
                builder: (context){
                  return DialogUI(state: apple, pear2: pear);
                },
            );
            },
        ),
        appBar: AppBar(),
        body: Container()
      );


  }
}

class DialogUI extends StatelessWidget {
  const DialogUI({Key? key, this.state, this.pear2}) : super(key: key);
  final state;
  final pear2;

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: SizedBox(
          height: 150, width: 300,
          child: Column(
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Contact',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15
                    ),
                  ),
                )
                ,),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20,4,20,4),
                  child: TextField(),
                ),
              ),
              Flexible(
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(onPressed: (){}, child: Text(state.toString())),
                          TextButton(onPressed: (){  }, child: Text(pear2)),
                        ],
                      )
                  )
              )

            ],
          ),
        )
    );
  }
}
