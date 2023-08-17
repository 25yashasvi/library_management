
import 'package:flutter/material.dart';
import 'package:software_engineering_app/Book1.dart';

import 'main.dart';
class Issue extends StatefulWidget {
  @override
  IssueState createState() => IssueState();
}

class IssueState extends State<Issue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 218, 5, 246),

        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('ISSUE BOOK',
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
             title: Text('Data Structures and Algorithms Made Easy',
             style:TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 25,
               color:Colors.purpleAccent

             )),
             subtitle:Text('By Narasimha Karumanchi',
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
             title: Text('A Pasage to India',
                 style:TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 25,
                     color:Colors.purpleAccent

                 )),
             subtitle:Text('By E.M.Foster',
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
             title: Text('A Revenue Stamp',
                 style:TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 25,
                     color:Colors.purpleAccent

                 )),
             subtitle:Text('ByAmrita Pritam',
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
             title: Text('Pinjar',
                 style:TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 25,
                     color:Colors.purpleAccent

                 )),
             subtitle:Text('By Amrita Pritam',
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
             title: Text('A Suitable Boy',
                 style:TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 25,
                     color:Colors.purpleAccent

                 )),
             subtitle:Text('By Vikram Seth',
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
             title: Text('David Copperfield',
                 style:TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 25,
                     color:Colors.purpleAccent

                 )),
             subtitle:Text('By Charles Darwin',
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
             title: Text('Oliver Twist',
                 style:TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 25,
                     color:Colors.purpleAccent

                 )),
             subtitle:Text('By Charles Darwin',
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
             title: Text('Aadhe Adhure',
                 style:TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 25,
                     color:Colors.purpleAccent

                 )),
             subtitle:Text('By Mohan Rakesh',
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
             title: Text('Akbarnama',
                 style:TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 25,
                     color:Colors.purpleAccent

                 )),
             subtitle:Text('By abul Farzl',
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