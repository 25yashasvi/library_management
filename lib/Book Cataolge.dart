
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
//async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(BookCataloge());
}

class BookCataloge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase',
      home:Data(),
    );
  }
}

class Data extends StatelessWidget {
  var bookname;
  var authorname;



  loadNewLaunch() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bookname= pref.getString('book');
    authorname= pref.getString('auth');
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

        title: Text("ENTERED BOOK DETAILS",
          textAlign: TextAlign.center,),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('BookRecord').where("BookTitle",
            isEqualTo:"Data Structure").where("Author",
            isEqualTo: "Narasimha Karumanchi")
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
                              Container(child:Text("Name of Book",
                                  style:TextStyle(
                                      color:Colors.purple,
                                      fontSize: 25
                                  ))),
                              SizedBox(width:75),
                              Container(child:Text(document['BookTitle'],
                                  style:TextStyle(
                                      color:Colors.purple,
                                      fontSize: 25
                                  ))),
                            ]),
                        Row(
                            children:[
                              Container(child:Text("Author of Book ",
                                  style:TextStyle(
                                      color:Colors.purple,
                                      fontSize: 25
                                  ))),
                              SizedBox(width:80),
                              Container(child:Text(document['Author'],
                                  style:TextStyle(
                                      color:Colors.purple,
                                      fontSize: 25
                                  ))),
                            ]),
                        Row(
                            children:[
                              Container(child:Text("Edition of Book",
                                  style:TextStyle(
                                      color:Colors.purple,
                                      fontSize: 25
                                  ))),

                              SizedBox(width:75),
                              Container(child:Text(document['Edition'],
                                  style:TextStyle(
                                      color:Colors.purple,
                                      fontSize: 25
                                  ))),
                            ]),
                        Row(
                            children:[
                              Container(child:Text("Book's Publisher",
                                  style:TextStyle(
                                      color:Colors.purple,
                                      fontSize: 25
                                  ))),
                              SizedBox(width:70),
                              Container(child:Text(document['Publisher'],
                                  style:TextStyle(
                                      color:Colors.purple,
                                      fontSize: 25
                                  ))),
                            ]),


              Row(
              children:[
              Container(child:Text("No. Of Copies Of Books",
              style:TextStyle(
              color:Colors.purple,
              fontSize: 25
              ))),
              SizedBox(width:70),
              Container(child:Text(document['Count']
              ,style:TextStyle(
              color:Colors.purple,
              fontSize: 25
              ))),
              ]),
              Row(
              children:[
              Container(child:Text("Cupboard No.",
              style:TextStyle(
              color:Colors.purple,
              fontSize: 25
              ))),
              SizedBox(width:85),
              Container(child:Text(document['cupboard'],
              style:TextStyle(
              color:Colors.purple,
              fontSize: 25
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