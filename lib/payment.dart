
import 'package:flutter/material.dart';
import 'package:software_engineering_app/home.dart';




class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
                    child:Text('PAYMENT',
                        style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
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

                  labelText: "UPI",
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

                    labelText: "PASSWORD",
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: new OutlineInputBorder(

                        borderRadius:new BorderRadius.circular(10.0)  ),
                    focusedBorder: new OutlineInputBorder(
                      borderSide:BorderSide(color:Colors.purpleAccent,width:0.0),
                      borderRadius:new BorderRadius.circular(10.0),

                    ))
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:60.0,right: 60.0,top:20.0,bottom: 0),
            // padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(

                  labelText: "PAYMENT AMOUNT",
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
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.purpleAccent, borderRadius: BorderRadius.circular(20)),

                  child: ElevatedButton(

                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Home()),
                      );
                    },
                    style:ElevatedButton.styleFrom(
                        primary:Colors.purpleAccent
                    ),

                    child: Text(
                      'PAY',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),

                  )
              ),
            ),
          ),


        ],
      ),

    );
  }
}