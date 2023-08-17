
import 'package:flutter/material.dart';
import 'package:software_engineering_app/Book1.dart';

import 'main.dart';
class NewBook extends StatefulWidget {
  @override
  NewBookState createState() => NewBookState();
}

class NewBookState extends State<NewBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 218, 5, 246),

        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('NEW BOOKS',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 45,
            )),
      ),
      body:
      Column   (

          children:<Widget>[
            // children:<Widget>[
            Expanded(
              //  child:ListView(
              // //

              // children: <Widget>[
              child:
              ListView(
                children:
                ListTile.divideTiles(context: context, tiles: [
                  ListTile(
                    minVerticalPadding: 10,

                    leading: Icon(Icons.book_outlined,

                        color: Colors.purpleAccent,
                        size:50),
                    title: Text('All Time Favourites for children',
                        style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color:Colors.purpleAccent

                        )),
                    subtitle:Text('By Ruskin Bond',
                        style:TextStyle(
                            color:Colors.purpleAccent,
                            fontSize: 15

                        )),
                    trailing:Column(
                        children:<Widget>[

                          ElevatedButton(onPressed: (){
                            Navigator.push(
                                context,MaterialPageRoute(builder:(context)=>Book1()));
                          },
                              style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purpleAccent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(10),
                                  ),
                                  minimumSize: Size(60,50)
                              ),

                              child: Text(
                                  "ISSUE",
                                  style:TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  )
                              )
                          ),
                        ]
                      // onTap:(){} ,
                      // selectedTileColor: Colors.purple[200],
                    ),
                  ),

                  ListTile(
                    minVerticalPadding: 10,

                    leading: Icon(Icons.book_outlined,

                        color: Colors.purpleAccent,
                        size:50),
                    title: Text('My Life is Full',
                        style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color:Colors.purpleAccent

                        )),
                    subtitle:Text('By Indra Nooyi',
                        style:TextStyle(
                            color:Colors.purpleAccent,
                            fontSize: 15

                        )),
                    trailing:Column(
                        children:<Widget>[

                          ElevatedButton(onPressed: (){
                            Navigator.push(
                                context,MaterialPageRoute(builder:(context)=>Book1()));
                          },
                              style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purpleAccent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(10),
                                  ),
                                  minimumSize: Size(60,50)
                              ),

                              child: Text(
                                  "ISSUE",
                                  style:TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  )
                              )
                          ),
                        ]
                      // onTap:(){} ,
                      // selectedTileColor: Colors.purple[200],
                    ),
                  ),

                  ListTile(
                    minVerticalPadding: 10,

                    leading: Icon(Icons.book_outlined,

                        color: Colors.purpleAccent,
                        size:50),
                    title: Text('The Indiaa Story',
                        style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color:Colors.purpleAccent

                        )),
                    subtitle:Text('By Bimal Jalan',
                        style:TextStyle(
                            color:Colors.purpleAccent,
                            fontSize: 15

                        )),
                    trailing:Column(
                        children:<Widget>[

                          ElevatedButton(onPressed: (){
                            Navigator.push(
                                context,MaterialPageRoute(builder:(context)=>Book1()));
                          },
                              style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purpleAccent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(10),
                                  ),
                                  minimumSize: Size(60,50)
                              ),

                              child: Text(
                                  "ISSUE",
                                  style:TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  )
                              )
                          ),
                        ]
                      // onTap:(){} ,
                      // selectedTileColor: Colors.purple[200],
                    ),
                  ),

                  ListTile(
                    minVerticalPadding: 10,

                    leading: Icon(Icons.book_outlined,

                        color: Colors.purpleAccent,
                        size:50),
                    title: Text('We are Displaced',
                        style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color:Colors.purpleAccent

                        )),
                    subtitle:Text('By Malala Yousafzai',
                        style:TextStyle(
                            color:Colors.purpleAccent,
                            fontSize: 15

                        )),
                    trailing:Column(
                        children:<Widget>[

                          ElevatedButton(onPressed: (){
                            Navigator.push(
                                context,MaterialPageRoute(builder:(context)=>Book1()));
                          },
                              style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purpleAccent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(10),
                                  ),
                                  minimumSize: Size(60,50)
                              ),

                              child: Text(
                                  "ISSUE",
                                  style:TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  )
                              )
                          ),
                        ]
                      // onTap:(){} ,
                      // selectedTileColor: Colors.purple[200],
                    ),
                  ),

                  ListTile(
                    minVerticalPadding: 10,

                    leading: Icon(Icons.book_outlined,

                        color: Colors.purpleAccent,
                        size:50),
                    title: Text('Pyjamas are Forgiving',
                        style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color:Colors.purpleAccent

                        )),
                    subtitle:Text('By Twinkle Khanna',
                        style:TextStyle(
                            color:Colors.purpleAccent,
                            fontSize: 15

                        )),
                    trailing:Column(
                        children:<Widget>[

                          ElevatedButton(onPressed: (){
                            Navigator.push(
                                context,MaterialPageRoute(builder:(context)=>Book1()));
                          },
                              style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purpleAccent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(10),
                                  ),
                                  minimumSize: Size(60,50)
                              ),

                              child: Text(
                                  "ISSUE",
                                  style:TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  )
                              )
                          ),
                        ]
                      // onTap:(){} ,
                      // selectedTileColor: Colors.purple[200],
                    ),
                  ),

                  ListTile(
                    minVerticalPadding: 10,

                    leading: Icon(Icons.book_outlined,

                        color: Colors.purpleAccent,
                        size:50),
                    title: Text('The Upside down king',
                        style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color:Colors.purpleAccent

                        )),
                    subtitle:Text('By Sudha Murty',
                        style:TextStyle(
                            color:Colors.purpleAccent,
                            fontSize: 15

                        )),
                    trailing:Column(
                        children:<Widget>[

                          ElevatedButton(onPressed: (){
                            Navigator.push(
                                context,MaterialPageRoute(builder:(context)=>Book1()));
                          },
                              style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purpleAccent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(10),
                                  ),
                                  minimumSize: Size(60,50)
                              ),

                              child: Text(
                                  "ISSUE",
                                  style:TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  )
                              )
                          ),
                        ]
                      // onTap:(){} ,
                      // selectedTileColor: Colors.purple[200],
                    ),
                  ),

                  ListTile(
                    minVerticalPadding: 10,

                    leading: Icon(Icons.book_outlined,

                        color: Colors.purpleAccent,
                        size:50),
                    title: Text('Lone Fox dancing',
                        style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color:Colors.purpleAccent

                        )),
                    subtitle:Text('By Ruskin bond',
                        style:TextStyle(
                            color:Colors.purpleAccent,
                            fontSize: 15

                        )),
                    trailing:Column(
                        children:<Widget>[

                          ElevatedButton(onPressed: (){},
                              style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purpleAccent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(10),
                                  ),
                                  minimumSize: Size(60,50)
                              ),

                              child: Text(
                                  "ISSUE",
                                  style:TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  )
                              )
                          ),
                        ]
                      // onTap:(){} ,
                      // selectedTileColor: Colors.purple[200],
                    ),
                  ),

                  ListTile(
                    minVerticalPadding: 10,

                    leading: Icon(Icons.book_outlined,

                        color: Colors.purpleAccent,
                        size:50),
                    title: Text('Go Set a Watchman',
                        style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color:Colors.purpleAccent

                        )),
                    subtitle:Text('By Nasureedin Shah',
                        style:TextStyle(
                            color:Colors.purpleAccent,
                            fontSize: 15

                        )),
                    trailing:Column(
                        children:<Widget>[

                          ElevatedButton(onPressed: (){
                            Navigator.push(
                                context,MaterialPageRoute(builder:(context)=>Book1()));
                          },
                              style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purpleAccent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(10),
                                  ),
                                  minimumSize: Size(60,50)
                              ),

                              child: Text(
                                  "ISSUE",
                                  style:TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  )
                              )
                          ),
                        ]
                      // onTap:(){} ,
                      // selectedTileColor: Colors.purple[200],
                    ),
                  ),

                  ListTile(
                    minVerticalPadding: 10,

                    leading: Icon(Icons.book_outlined,

                        color: Colors.purpleAccent,
                        size:50),
                    title: Text('One indian Girl',
                        style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color:Colors.purpleAccent

                        )),
                    subtitle:Text('By Chetan Bhagat',
                        style:TextStyle(
                            color:Colors.purpleAccent,
                            fontSize: 15

                        )),
                    trailing:Column(
                        children:<Widget>[

                          ElevatedButton(onPressed: (){
                            Navigator.push(
                                context,MaterialPageRoute(builder:(context)=>Book1()));
                          },
                              style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purpleAccent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(10),
                                  ),
                                  minimumSize: Size(60,50)
                              ),

                              child: Text(
                                  "ISSUE",
                                  style:TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  )
                              )
                          ),
                        ]
                      // onTap:(){} ,
                      // selectedTileColor: Colors.purple[200],
                    ),
                  ),

                ]).toList(),
              ),
            )
          ]
      ),

      //      decoration: new BoxDecoration(
      //     color:Color.fromARGB(255, 218, 146, 229)),
      //      padding: const EdgeInsets.all(8.0),

      // child:
      // ListView(
      //   children:<Widget>[
      //
      //   // children: ListTile.divideTiles(context:context,tiles: [
      // // color:Color.fromARGB(255, 218, 146, 229),
      //
      // ListTile(
      //
      //   leading:Icon(Icons.book_outlined,
      //     color:Colors.white
      //   ),
      //
      //   title:Text('Data Structure',
      //   style:TextStyle(
      //     color:Colors.white
      //   )),
      //     tileColor:Color.fromARGB(255, 218, 146, 229),
      //     subtitle:Text('XIzhkjfs',
      //         style:TextStyle(
      //             color:Colors.white
      //         )),
      //   visualDensity: VisualDensity(vertical: 4),
      //   selected: true,
      //   selectedTileColor: Colors.deepPurpleAccent,
      //   onTap:()
      //     {
      //       Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
      //     }
      // ),
      //     ListTile(
      //         leading:Icon(Icons.book_outlined),
      //         title:Text('Software Engineering',
      //             style:TextStyle(
      //                 color:Colors.white
      //             )),
      //         subtitle:Text('XIzhkjfs',
      //             style:TextStyle(
      //                 color:Colors.white
      //             )),
      //         selected: true,
      //         selectedTileColor: Colors.deepPurpleAccent,
      //         onTap:()
      //         {
      //           Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
      //         }
      //     ),
      //     ListTile(
      //         leading:Icon(Icons.book_outlined,
      //             color:Colors.white
      //         ),
      //         title:Text('Data Structure',
      //             style:TextStyle(
      //                 color:Colors.white
      //             )),
      //         tileColor:Color.fromARGB(255, 218, 146, 229),
      //         subtitle:Text('XIzhkjfs',
      //             style:TextStyle(
      //                 color:Colors.white
      //             )),
      //         visualDensity: VisualDensity(vertical: 4),
      //         selected: true,
      //         selectedTileColor: Colors.deepPurpleAccent,
      //         onTap:()
      //         {
      //           Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
      //         }
      //     ),
      //     ListTile(
      //         leading:Icon(Icons.book_outlined,
      //             color:Colors.white
      //         ),
      //         title:Text('Data Structure',
      //             style:TextStyle(
      //                 color:Colors.white
      //             )),
      //         tileColor:Color.fromARGB(255, 218, 146, 229),
      //         subtitle:Text('XIzhkjfs',
      //             style:TextStyle(
      //                 color:Colors.white
      //             )),
      //         visualDensity: VisualDensity(vertical: 4),
      //         selected: true,
      //         selectedTileColor: Colors.deepPurpleAccent,
      //         onTap:()
      //         {
      //           Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
      //         }
      //     ),
      //
      //]
      //),
      //    ),
//]
      //      )
      //     ),
      // ),
      //],
      //    ),
    );





  }
}