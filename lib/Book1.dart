
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:software_engineering_app/home.dart';
import 'package:software_engineering_app/main.dart';




class Book1 extends StatefulWidget {
  _Book1State createState() => _Book1State();
}

class _Book1State extends State<Book1> {


  @override
  Widget build(BuildContext context) {
    // final fileName = _fileText != "" ? _fileText : 'No file was selected';
    // bool success = true;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 218, 5, 246),
        title: Text(

          'Data Structures and Algorithms Made Easy',
          textAlign:TextAlign.center,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,

            ),
          ),
        ),
      ),
      body:
      Center(
        child:
        ListView(
          padding: EdgeInsets.only(left:20,right:20,top:0,bottom:20),
          children: <Widget>[
            ClipRect(
        child: const Image(
          height: 250,
          width: 50,
          image: AssetImage('book2.jpeg'),
          fit: BoxFit.cover,
        ),

              // borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),

             Text(
                "Book Author:Narasimha Karumanchi",
                style: TextStyle(
                  fontSize: 20,
                  color:Colors.purpleAccent

                ),
              ),


            Text("Publisher's Name:CareerMonk Publications,",
              style: TextStyle(
                  fontSize: 20,
                  color:Colors.purpleAccent

              ),),
            Text('Edition:5th',
              style: TextStyle(
                  fontSize: 20,
                  color:Colors.purpleAccent

              ),),
            Text('Status : Available',
              style: TextStyle(
                  fontSize: 20,
                  color:Colors.purpleAccent

              ),),
            SizedBox(
              height: 5,
            ),
            Text('OVERVIEW',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:Colors.purple[800],
                decoration: TextDecoration.underline,


              ),),

            Text(
              //"setting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum,It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
             // "Data Structures And Algorithms Made Easy: Data Structure And Algorithmic Puzzles is a book that offers solutions to complex data structures and algorithms. There are multiple solutions for each problem and the book is coded in C/C++, it comes handy as an interview and exam guide for computer scientists. A handy guide of sorts for any computer science professional, Data Structures And Algorithms Made Easy: Data Structure And Algorithmic Puzzles is a solution bank for various complex problems related to data structures and algorithms. It can be used as a reference manual by those readers in the computer science industry. The book has around 21 chapters and covers Recursion and Backtracking, Linked Lists, Stacks, Queues, Trees, Priority Queue and Heaps, Disjoint Sets ADT, Graph Algorithms, Sorting, Searching, Selection Algorithms Medians], Symbol Tables, Hashing, String Algorithms, Algorithms Design Techniques, Greedy Algorithms, Divide and Conquer Algorithms, Dynamic Programming, Complexity Classes, and other Miscellaneous Concepts. Data Structures And Algorithms Made Easy: Data Structure And Algorithmic Puzzles by Narasimha Karumanchi was published in March, and it is coded in C/C++ language.",
              "Data Structures And Algorithms Made Easy: Data Structure And Algorithmic Puzzles is a book that offers solutions to complex data structures and algorithms. There are multiple solutions for each problem and the book is coded in C/C++, it comes handy as an interview and exam guide for computer scientists. A handy guide of sorts for any computer science professional, Data Structures And Algorithms Made Easy: Data Structure And Algorithmic Puzzles is a solution bank for various complex problems related to data structures and algorithms. It can be used as a reference manual by those readers in the computer science industry. The book has around 21 chapters and covers Recursion and Backtracking, Linked Lists, Stacks, Queues, Trees, Priority Queue and Heaps, ",
              style: TextStyle(
                fontSize: 15,
                color:Colors.purple[200],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child:
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,MaterialPageRoute(builder:(context)=>Home()));
              },
                  style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.purpleAccent,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(10),
                      ),
                      minimumSize: Size(100,50)
                  ),

                  child: Text(
                      "ISSUE BOOK",
                      style:TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      )
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}



