import 'package:flutter/material.dart';
import 'package:software_engineering_app/admin_login.dart';
import 'package:software_engineering_app/user_login.dart';
import 'home.dart';




class Options extends StatefulWidget {





  @override
  OptionsState createState() => OptionsState();
}

class OptionsState extends State<Options> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
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
              child:


              Text('CHOOSE YOUR ROLE',
                  style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color:Colors.white
                  ),
              )),

          //  ),
        ),
      ),
    ),
            SizedBox(
              height:30
            ),
            Container(

              child:Row(
                children:<Widget>[

                   Container(
                  //
                   padding:  const EdgeInsets.only(left:60,right:30,top:0,bottom:0),
                  child:

                  SizedBox.fromSize(
                    size: Size(200,300),
                  child:ClipRect(
                    child:Material(
                      color:Colors.purpleAccent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0)
                    ),

                      child:InkWell(

                        onTap:(){
                          Navigator.push(
                            context,MaterialPageRoute(builder:(context)=>UserLogin()),
                          );
                      },
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.person,
                            color:Colors.white,
                            size:90.0),
                            SizedBox(height:20),
                            Text("USER",
                            style:TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                            ))
                          ],
                        )

                      )
                    )
                  )
                 ),
                   ),

                  Container(
                    //
                    padding:  const EdgeInsets.only(left:75,right:60,top:0,bottom:0),
                    child:

                    SizedBox.fromSize(
                        size: Size(200,300),
                        child:ClipRect(
                            child:Material(
                                color:Colors.purpleAccent,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(25.0)
                                ),
                                child:InkWell(

                                    onTap:(){
                                      Navigator.push(
                                        context,MaterialPageRoute(builder:(context)=>AdminLogin()),
                                      );
                                    },
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.person,
                                            color:Colors.white,
                                           size:90.0),
                                        SizedBox(height:20),
                                        Text("ADMIN",
                                            style:TextStyle(
                                              color:Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 50,
                                            ))
                                      ],
                                    )

                                )
                            )
                        )
                    ),

                    //  child:TextField(
                    // // //
                    //   decoration: InputDecoration(
                    //     icon: Icon(Icons.person,
                    //   color: Colors.purpleAccent,),
                    //   labelText: "USER",
                    //  fillColor: Colors.white,
                    //   filled: true,
                    //   enabledBorder: new OutlineInputBorder(
                    // // //
                    //  borderRadius:new BorderRadius.circular(10.0)  ),
                    //  focusedBorder: new OutlineInputBorder(
                    //   borderSide:BorderSide(color:Colors.purpleAccent,width:0.0),
                    //   borderRadius:new BorderRadius.circular(10.0),
                    //
                    //  ),
                    //   ),
                    //   ),
                  )
                  ]
              ),
            ),

    // SizedBox(
    // width:10
    // ),
    // Container(
    //
    // padding:  const EdgeInsets.only(left:10,right:10,top:0,bottom:0),
    // child: TextField(
    // decoration: InputDecoration(
    // icon: Icon(Icons.person,
    // color: Colors.purpleAccent,),
    // labelText: "ADMIN",
    // fillColor: Colors.white,
    // filled: true,
    // enabledBorder: new OutlineInputBorder(
    //
    // borderRadius:new BorderRadius.circular(10.0)  ),
    // focusedBorder: new OutlineInputBorder(
    // borderSide:BorderSide(color:Colors.purpleAccent,width:0.0),
    // borderRadius:new BorderRadius.circular(10.0),
    //
    // )),
    // ),
    // )
    //                ]
      //            ),
       //     )
                ]
              )

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
