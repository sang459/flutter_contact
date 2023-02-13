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

  var contactList = ['김병식'];

  addOne(text) {
    setState(() { ///이거 까먹지 마라!!!!!!!!!!!!
      contactList.add(text);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        floatingActionButton:
        FloatingActionButton(
          onPressed: (){
            showDialog(
                context: context,
                builder: (context){
                  return DialogUI(aO : addOne);
                },
            );
            },
        ),
        appBar: AppBar( title: Text('')),
        body: ListView.builder(
          itemCount: contactList.length,
          itemBuilder: (context, i) {
            return Row(
              children: [
                Icon(Icons.contact_page_outlined),
                Text(contactList[i])
              ],
            );
          },

        )


        // Listview 만들었던거 참고용
      // ListView.builder(
      //           itemCount: 3,
      //           itemBuilder: (context, i){
      //             return Row(
      //               children: [
      //                 Flexible(
      //                     flex: 7,
      //                     child: Row(
      //                       children: [
      //                         Padding(
      //                           padding: const EdgeInsets.fromLTRB(5,0,5,0),
      //                           child: Text(LikeCount[i].toString()),
      //                         ),
      //                         Icon(Icons.contact_page_rounded),
      //                         Text(name[i]),
      //                       ],
      //                     )
    );


  }
}

class DialogUI extends StatelessWidget {
  DialogUI({Key? key, this.aO}) : super(key: key);
  var aO;
  var inputData = '';

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
                  child: Text('연락처 추가',
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
                  child: TextField( onChanged: (text){
                    inputData = text;
                  })
                ),
              ),
              Flexible(
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                              onPressed: (){
                            if ( inputData != '' ) { aO(inputData); }
                            inputData = '';
                            Navigator.pop(context);
                            },
                              child: Text('확인')),
                          TextButton(
                              onPressed: (){
                                Navigator.pop(context); 
                                },
                              child: Text('취소')),
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
