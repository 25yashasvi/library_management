
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:form_field_validator/form_field_validator.dart';
//import 'package:url_launcher/url_launcher.dart';

import 'dart:io';
import 'dart:typed_data';
import 'package:path/path.dart';
import 'package:software_engineering_app/admin_home.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart' as fs;
import 'home.dart';

class AddBook extends StatefulWidget {
  _AddBookState createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  // CollectionReference raise =
  // FirebaseFirestore.instance.collection("raised_issues");
  // TextEditingController fname = TextEditingController();
  // TextEditingController lname = TextEditingController();
  // TextEditingController phn = TextEditingController();
  // TextEditingController mail = TextEditingController();
  // TextEditingController issue = TextEditingController();
  // TextEditingController wissue = TextEditingController();
  // GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String _fileText = "";
  // List<String> listofFiles = [];
  // List<Uint8List> listofUploads = [];
  // int ct = 0;

  @override
  Widget build(BuildContext context) {
    // final fileName = _fileText != "" ? _fileText : 'No file was selected';
    // bool success = true;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 218, 5, 246),
          title: Text(
            'ADD NEW BOOK',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

        ),


        body:
        // SingleChildScrollView(
        //     child:
        SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  // Stack(children: [
                  //   Container(
                  //     margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 1050),
                  //     // child: ClipRRect(
                  //     //   borderRadius: BorderRadius.circular(20),
                  //       child: Image(image: AssetImage('i2.jpeg'),
                  //       ),
                  //     // ),
                  //   ),
                  // Container(
                  //     margin: EdgeInsets.symmetric(vertical: 80.0, horizontal: 15.0),
                  //     padding: EdgeInsets.only(left: 25.0),
                  //     child: Align(
                  //         alignment: Alignment.centerLeft,
                  //         child: Text("Add Book",
                  //             style: GoogleFonts.roboto(
                  //               textStyle: TextStyle(
                  //                   color: Colors.white,
                  //                   fontWeight: FontWeight.bold,
                  //                   fontSize: 26),
                  //             )))),
                  // Container(
                  //     margin: EdgeInsets.symmetric(vertical: 80.0, horizontal: 15.0),
                  //     padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
                  //     child: Align(
                  //         alignment: Alignment.centerLeft,
                  //         child: Text(
                  //           "Details",
                  //           style: GoogleFonts.roboto(
                  //             textStyle: TextStyle(
                  //                 color: Colors.white,
                  //                 fontWeight: FontWeight.bold,
                  //                 fontSize: 26),
                  //           ),
                  //           textAlign: TextAlign.left,
                  //         ))),
                  // ]),
                  SizedBox(height:20),
                  Container(

                    //  height: MediaQuery.of(context).size.height - 100.0,
                      height:400.0,
                      width: 500.0,
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.purple[50],
                      ),
                      margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                      child: Form(
                        //autovalidate: false,
                        // key: formKey,
                          child: Column(children: <Widget>[
                            // Container(
                            //     child: Row(children: <Widget>[
                            Expanded(
                                child: TextFormField(
                                  // validator: (String? value) {
                                  //   if (value == null) {
                                  //     return "First Name can't be empty";
                                  //   } else if (value.length < 3) {
                                  //     return 'First Name must be at least 3 charcters long.';
                                  //   }
                                  // },
                                  //  controller: fname,
                                  //   autovalidateMode:
                                  //   AutovalidateMode.onUserInteraction,
                                    decoration: InputDecoration(

                                        labelText: "Book Title",
                                        fillColor: Colors.white,
                                        filled: true,
                                        enabledBorder: new OutlineInputBorder(

                                            borderRadius:new BorderRadius.circular(10.0)  ),
                                        focusedBorder: new OutlineInputBorder(
                                          borderSide:BorderSide(color:Colors.purpleAccent,width:0.0),
                                          borderRadius:new BorderRadius.circular(10.0),

                                        )))),
                            // SizedBox(
                            //   width: 20.0,
                            // ),
                            // Expanded(
                            //     child: TextFormField(
                            //         // controller: lname,
                            //         decoration: InputDecoration(
                            //             labelText: "Last Name",
                            //             fillColor: Colors.white,
                            //             filled: true,
                            //             border: OutlineInputBorder(
                            //                 borderRadius:
                            //                 BorderRadius.circular(10.0))))),
                            //     ]
                            //     )
                            // ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Expanded(
                                child: TextFormField(
                                  //controller: phn,
                                  // autovalidateMode:
                                  // AutovalidateMode.onUserInteraction,
                                  // validator: (String? val) {
                                  //   if (val == "") {
                                  //     return "Phone no. cannot be empty";
                                  //   } else if (val!.length < 10 || val.length > 10) {
                                  //     return "Phone no. must be 10 characters long!";
                                  //   }
                                  // },
                                    decoration: InputDecoration(
                                        labelText: "Book Author",
                                        fillColor: Colors.white,
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(10.0))))),
                            SizedBox(
                              height: 20.0,
                            ),
                            Expanded(
                                child: TextFormField(
                                  //  controller: mail,
                                  //   autovalidateMode:
                                  //   AutovalidateMode.onUserInteraction,
                                  //   validator: MultiValidator([
                                  //     RequiredValidator(errorText: "Required *"),
                                  //     EmailValidator(
                                  //         errorText: "Please enter valid email ID")
                                  //   ]),
                                    decoration: InputDecoration(
                                        labelText: "Publisher's Name",
                                        fillColor: Colors.white,
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(10.0))))),
                            SizedBox(
                              height: 15.0,
                            ),
                            Expanded(
                                child: TextFormField(
                                  // controller: issue,
                                  // autovalidateMode:
                                  // AutovalidateMode.onUserInteraction,
                                  // validator: (String? val) {
                                  //   if (val == "") {
                                  //     return "Issue subject can't be empty";
                                  //   } else if (val!.length < 10) {
                                  //     return "Issue subject must be atleast 10 characters long";
                                  //   }
                                  // },
                                    decoration: InputDecoration(
                                        labelText: "Book Edition",
                                        fillColor: Colors.white,
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(10.0))))),
                            SizedBox(
                              height: 15.0,
                            ),
                            Expanded(
                                child: TextFormField(
                                  // controller: issue,
                                  // autovalidateMode:
                                  // AutovalidateMode.onUserInteraction,
                                  // validator: (String? val) {
                                  //   if (val == "") {
                                  //     return "Issue subject can't be empty";
                                  //   } else if (val!.length < 10) {
                                  //     return "Issue subject must be atleast 10 characters long";
                                  //   }
                                  // },
                                    decoration: InputDecoration(
                                        labelText: "No. Of Books Available",
                                        fillColor: Colors.white,
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(10.0))))),
                            // Expanded(
                            //     child: TextFormField(
                            //         // controller: wissue,
                            //         // validator: (String? val) {
                            //         //   if (val == "") {
                            //         //     return "Issue description can't be empty!";
                            //         //   } else if (val!.length < 10) {
                            //         //     return "Issue subject must be atleast 10 characters long";
                            //         //   }
                            //         // },
                            //         maxLines: 10,
                            //         decoration: InputDecoration(
                            //             labelText: "*Write your issue",
                            //             hintText: "Enter issue here",
                            //             fillColor: Colors.white,
                            //             filled: true,
                            //             border: OutlineInputBorder(
                            //                 borderRadius:
                            //                 BorderRadius.circular(0.0))))),
                             SizedBox(
                               height: 20.0,
                             ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //     Padding(
                                  //       //padding: EdgeInsets.all(2),
                                  //       padding: EdgeInsets.symmetric(
                                  //           vertical: 13, horizontal: 40),
                                  //       child: ElevatedButton(
                                  //         onPressed: () => {}
                                  //     ,
                                  //             //uploadFile(),
                                  //         // color: Color(0xFFFFBA15),
                                  //         // shape: RoundedRectangleBorder(
                                  //         //   borderRadius:
                                  //         //       BorderRadius.all(Radius.circular(10.0)),
                                  //         // ),
                                  //          child: Text(
                                  //           "SUBMIT",
                                  //         //   textAlign: TextAlign.center,
                                  //         //   style: TextStyle(
                                  //         //     fontSize: 13.0,
                                  //         //     fontFamily: 'Roboto',
                                  //         //     fontWeight: FontWeight.bold,
                                  //         //     color: Colors.white,
                                  //         //   ),
                                  //         // ),
                                  //       ),
                                  //       ),
                                  //     ),
                                  //
                                  SizedBox(
                                    width:130,
                                    height:50,

                                    child: ElevatedButton(

                                      onPressed: () async {
                                        // String errhap = "";
                                        // if (formKey.currentState!.validate()) {
                                        //   try {
                                        //     await raise.add({
                                        //       "Fname": fname.text,
                                        //       "Lname": lname.text,
                                        //       "issue": issue.text,
                                        //       "wissue": wissue.text,
                                        //       "email": mail.text,
                                        //       "phn": phn.text
                                        //     }).then((value) async {
                                        //       for (int i = 0;
                                        //       i < listofFiles.length;
                                        //       i++) {
                                        //         await submitFiles(
                                        //             listofFiles[i], listofUploads[i]);
                                        //       }
                                        //     }).then((value) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Admin()),
                                        );
                                      },
                                      style:ElevatedButton.styleFrom(
                                          primary:Colors.purpleAccent
                                      ),
                                      // } catch (e) {
                                      //   success = false;
                                      //   errhap = e.toString();
                                      //   print(e);
                                      // }
                                      // if (success == true) {
                                      //   Fluttertoast.showToast(
                                      //       msg:
                                      //       "File and Info Upload Successful! ",
                                      //       toastLength: Toast.LENGTH_SHORT,
                                      //       gravity: ToastGravity.CENTER,
                                      //       timeInSecForIosWeb: 1,
                                      //       backgroundColor: Colors.green,
                                      //       textColor: Colors.white,
                                      //       fontSize: 16.0);
                                      // }
                                      // else {
                                      //   Fluttertoast.showToast(
                                      //       msg:
                                      //       "File and Info Upload unsuccessful...\n" +
                                      //           errhap,
                                      //       toastLength: Toast.LENGTH_SHORT,
                                      //       gravity: ToastGravity.CENTER,
                                      //       timeInSecForIosWeb: 1,
                                      //       backgroundColor:
                                      //       Color.fromARGB(255, 247, 34, 19),
                                      //       textColor: Colors.white,
                                      //       fontSize: 16.0);
                                      // }
                                      //  }
                                      //  },

                                      // color: Color(0XFF04C300),
                                      // shape: RoundedRectangleBorder(
                                      //   borderRadius:
                                      //       BorderRadius.all(Radius.circular(10.0)),
                                      // ),
                                      child: Text(
                                        "SUBMIT",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),

                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   height: 30.0,
                            // ),
                            // Container(
                            //     child: Text(
                            //      // fileName,
                            //       style: TextStyle(
                            //         fontSize: 13.0,
                            //         fontFamily: 'Roboto',
                            //         fontWeight: FontWeight.bold,
                            //       ),
                            //     )),
                            // SizedBox(
                            //   height: 30.0,
                            // ),
                          ]))),
                  // Container(
                  //   margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                  //   child: Row(
                  //     children: [
                  //       Icon(
                  //         Icons.email_outlined,
                  //         color: Colors.purple[800],
                  //         size: 30.0,
                  //       ),
                  //       SizedBox(
                  //         width: 10.0,
                  //       ),
                  //       Text(
                  //         'matasundricollege.du@gmail.com',
                  //         style: GoogleFonts.lato(
                  //           textStyle: TextStyle(fontSize: 15.0),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         width: 7.0,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ])));
  }




}
