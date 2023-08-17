
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
//async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase',
      home: AddData(),
    );
  }
}

class AddData extends StatelessWidget {
  var dept;
var month;



  loadNewLaunch() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    month= pref.getString('month');
    dept= pref.getString('dept');
}
  @override
  void initState() {
  //  super.initState();
    loadNewLaunch();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,

        title: Text("MONTHLY REPORT",
        textAlign: TextAlign.center,),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('UserRecord').where("Department",
            isEqualTo: dept).where("Month",
          isEqualTo: month)
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            children: snapshot.data!.docs
                .map((document){
              return Container(
                    margin:EdgeInsets.all(40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children:[
                      Row(
                          children:[
                        Container(child:Text("Name Of Student",
                        style:TextStyle(
                          color:Colors.purple,
                          fontSize: 15
                        ))),
                        SizedBox(width:60),
                        Container(child:Text(document['StudentName'],
                            style:TextStyle(
                                color:Colors.purple,
                                fontSize: 15
                            ))),
                       ]),
                      Row(
                          children:[
                            Container(child:Text("Student ID ",
                                style:TextStyle(
                                    color:Colors.purple,
                                    fontSize: 15
                                ))),
                            SizedBox(width:80),
                            Container(child:Text(document['StudentId'],
                                style:TextStyle(
                                    color:Colors.purple,
                                    fontSize: 15
                                ))),
                          ]),
                      Row(
                          children:[
                            Container(child:Text("Book Issued Title",
                                style:TextStyle(
                                    color:Colors.purple,
                                    fontSize: 15
                                ))),

                            SizedBox(width:40),
                            Container(child:Text(document['BookTitle'],
                                style:TextStyle(
                                    color:Colors.purple,
                                    fontSize: 15
                                ))),
                          ]),
                      Row(
                          children:[
                            Container(child:Text("Fine Payment",
                                style:TextStyle(
                                    color:Colors.purple,
                                    fontSize: 15
                                ))),
                            SizedBox(width:70),
                            Container(child:Text(document['Payment'].toString(),
                                style:TextStyle(
                                    color:Colors.purple,
                                    fontSize: 15
                                ))),
                          ]),





              ])

              );
            }).toList(),
          );
        },
      ),
    );
  }
}