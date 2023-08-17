
import 'package:flutter/material.dart';
import 'package:software_engineering_app/Book%20Cataolge.dart';
import 'package:software_engineering_app/admin_home.dart';
import 'package:software_engineering_app/home.dart';




class Cataloge extends StatefulWidget {
  @override
  _CatalogeState createState() => _CatalogeState();
}

class _CatalogeState extends State<Cataloge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      // appBar: AppBar(
      //   title: Text("ADMIN LOGIN"),
      // ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(

            padding: const EdgeInsets.only(top: 30.0),
            child: Center(
              child:
              Container(
                child: Container(
                    padding: const EdgeInsets.only(left:50.0,right: 50.0,top:20,bottom: 0),
                    //color:Colors.purpleAccent,
                    width:500,
                    height: 100,
                    alignment: Alignment(0.0,0.0),
                    decoration: BoxDecoration(
                        color:Colors.purpleAccent,
                        borderRadius: BorderRadius.circular(20)),
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child:Text('ENTER BOOK DETAILS',
                        style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color:Colors.white
                        ))),
                //  ),
              ),
            ),
          ),
          SizedBox(
              height:50),
          Padding(
            padding: const EdgeInsets.only(left:60.0,right: 60.0,top:0,bottom: 0),
            // padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(

                  labelText: "Book Title",
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: new OutlineInputBorder(

                      borderRadius:new BorderRadius.circular(10.0)  ),
                  focusedBorder: new OutlineInputBorder(
                    borderSide:BorderSide(color:Colors.purpleAccent,width:0.0),
                    borderRadius:new BorderRadius.circular(10.0),

                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 60.0, right: 60.0, top: 30, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
                obscureText: true,
                decoration: InputDecoration(

                    labelText: "Book Author",
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: new OutlineInputBorder(

                        borderRadius:new BorderRadius.circular(10.0)  ),
                    focusedBorder: new OutlineInputBorder(
                      borderSide:BorderSide(color:Colors.purpleAccent,width:0.0),
                      borderRadius:new BorderRadius.circular(10.0),

                    )),

            ),
          ),
          SizedBox(
              height:70
          ),
          Container(
            child:Center(
              child:Container(

                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.purpleAccent, borderRadius: BorderRadius.circular(20)),

                  child: ElevatedButton(

                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookCataloge()),
                      );
                    },
                    style:ElevatedButton.styleFrom(
                        primary:Colors.purpleAccent
                    ),

                    child: Text(
                      'GENERATE REPORT',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),

                  )
              ),
            ),
          ),

          SizedBox(
            height: 130,
          ),

        ],
      ),

    );
  }
}