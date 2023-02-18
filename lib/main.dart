import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:contacts_service/contacts_service.dart';


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

  List<Contact> contactList = [];

  getPermission() async {
    var status = await Permission.contacts.status;
    if (status.isGranted) {
      print('허락됨');
      var contacts = await ContactsService.getContacts();
      setState(() {
        contactList = contacts;
      });


      //print(contacts[0].displayName);
      //var newPerson = Contact();
      //newPerson.givenName = '민수';
      //newPerson.familyName = '김';
      //ContactsService.addContact(newPerson);



    } else if (status.isDenied) {
      print('거절됨');
      Permission.contacts.request();
    }
  }

  @override
  void initState() {
    super.initState();

  }

  addOne(text) {
    setState(() { ///이거 까먹지 마라!!!!!!!!!!!!
      var newPerson = Contact();
      newPerson.givenName = text;
      ContactsService.addContact(newPerson);

      getPermission();
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
        appBar: AppBar( actions: [
          IconButton(onPressed: (){ getPermission(); }, icon: Icon(Icons.contacts))
        ] ),
        body: ListView.builder(
          itemCount: contactList.length,
          itemBuilder: (context, i) {
            if (contactList[i].givenName != Null) {  // Null Check
              return
                Row(
                  children: [
                    Icon(Icons.contact_page_outlined, size: 50),
                    Text(contactList[i].givenName!, style: TextStyle(fontSize: 50))   //!는 null이 아니라고 확신할 때 쓰는거.
                  ],
                );
            }
            else {
              return SizedBox();
            }
          }



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
          height: 200, width: 300,
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
                      padding: EdgeInsets.all(10),
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
                              child: Text('OK')),
                          TextButton(
                              onPressed: (){
                                Navigator.pop(context); 
                                },
                              child: Text('Cancel')),
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


// C:\"Program Files"\Java\jdk-19\bin\keytool -genkey -v -keystore C:\Users\sanghyun\Documents\android_keys\upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload