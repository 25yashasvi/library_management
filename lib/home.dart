


import 'package:flutter/material.dart';
import 'package:software_engineering_app/New_Book.dart';
import 'package:software_engineering_app/payment.dart';
import 'package:software_engineering_app/request_new_book.dart';
import 'issue_book.dart';
import 'admin_home.dart';
import 'user_login.dart';
class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 247, 250, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 218, 5, 246),
              ),
              child: Column(children: <Widget>[
                Container(
                  alignment: Alignment(-0.80, -1.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget>[
                      Text('LIBRARY',
                      style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 35,
    )),

                        SizedBox(height: 5),
                        Text('MANAGEMENT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 35,
                            )),
                        SizedBox(height: 5),
                        Text('SYSTEM',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 35,
                            )),
                      ]),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 0, 100, 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  // child:
                  // InkWell(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                     icon: Icon(Icons.search),
                     onPressed: () {
    showSearch(context: context, delegate: Search());},
                          color:Colors.purpleAccent
                         // color: Colors.purpleAccent,
                        ),
                        hintText: "Search the book......",
                        hintStyle:
                        TextStyle(color: Colors.purpleAccent, fontSize: 15),


                      ),

                 //   ),
                //       onTap: (){
                // showSearch(context: context, delegate: Search());},

                ),
                ),
                SizedBox(height: 3)
              ])),
          Container(
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.all(Radius.circular(20.0)),
            // ),
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              children: <Widget>[
                // Padding(,
                //   padding: EdgeInsets.fromLTRB(10, 10, 20, 0),
                // ),

                // CarouselSlider(
                ClipRRect(
                  // items: [
                  // Container(
                  // width: 200,
                  //margin: const EdgeInsets.fromLTRB(10, 10, 20, 0),
                  child: const Image(
                    height: 200,
                    width: 200,
                    image: AssetImage('i1.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                SizedBox(height: 200, width: 10),
                ClipRRect(
                  // Container(
                  // margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(8.0),
                  // image: DecorationImage(
                  // image: AssetImage('i2.jpeg'), fit: BoxFit.contain),
                  child: const Image(
                    height: 200,
                    width: 200,
                    image: AssetImage('i2.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                SizedBox(height: 200, width: 10),
                ClipRRect(
                  // Container(
                  // margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  //decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(8.0),
                  //   image: DecorationImage(
                  // image: AssetImage('i3.jpeg'), fit: BoxFit.contain),
                  child: const Image(
                    height: 200,
                    width: 190,
                    image: AssetImage('i3.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ],

              // options: CarouselOptions(
              //     autoPlay: true,
              //     height: 100.0,
              //     enableInfiniteScroll: true,
              //     enlargeCenterPage: true,
              //     scrollDirection: Axis.horizontal),
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(55, 10, 40, 0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 80,
                    width: 200,
                    child: ElevatedButton(

    onPressed: (){
    Navigator.push(
    context,MaterialPageRoute(builder:(context)=>Issue()),
);
    },

                        child: Text('Issue the book',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            )),
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                width: 3.0,
                                color: Color.fromARGB(255, 236, 214, 240)),
                            backgroundColor: Colors.purpleAccent,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ))),
                  ),
                  SizedBox(width: 70),
                  SizedBox(
                    height: 80,
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,MaterialPageRoute(builder:(context)=>Payment()));
                        },
                        child: Text('Payment',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            )),
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                width: 3.0,
                                color: Color.fromARGB(255, 236, 214, 240)),
                            backgroundColor: Colors.purpleAccent,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ))),
                  ),
                ],
              )),
          Container(
              margin: const EdgeInsets.fromLTRB(55, 20, 40, 0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 80,
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,MaterialPageRoute(builder:(context)=>(RequestBook())),
                          );
                        },
                        child: Text('Request for new book',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 17,
                            )),
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                width: 3.0,
                                color: Color.fromARGB(255, 236, 214, 240)),
                            backgroundColor: Colors.purpleAccent,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ))),
                  ),
                  SizedBox(width: 70),
                  SizedBox(
                    height: 80,
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,MaterialPageRoute(builder:(context)=>NewBook()));
                        },
                        child: Text('New Book',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            )),
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                width: 3.0,
                                color: Color.fromARGB(255, 236, 214, 240)),
                            backgroundColor: Colors.purpleAccent,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ))),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class Search extends SearchDelegate<String> {
  String got = "";
  final eventsinclg = [
    "Data Structure",
    "Software Engineering",
    "Data Algorithm",
    "Operating System",
    "Linear Algebra",
    "R Programming",
    "Web Designing",
    "C++ language",
    "Java Language",
    "C language"
  ];

  final recentsrch = [
    "Data Structure",
    "Software Engineering",
    "Operating System",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    //actions for appbar
    return [
      IconButton(
          icon: Icon(Icons.clear,
          color:Colors.purpleAccent),
          onPressed: () {
            query = "";
          })
    ]; //removes anything registered within the search bar
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on app bar on left side
    return IconButton(
      icon: AnimatedIcon(
          color:Colors.purpleAccent,
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: () {
        close(context, "");
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // when selected show results based on selections
    if (eventsinclg.indexOf(got) == 0) {
      //setState method before the build method had completed the process of building the widgets.
      //error occurs while showing widget before the completion of the build method,
      //so we use schedulerbinding
      Future.delayed(Duration.zero, () async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>Home()),
        );
      });
    } else if (eventsinclg.indexOf(got) == 1) {
      Future.delayed(Duration.zero, () async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      });
    } else {
      return Container(
        margin: EdgeInsets.all(10),
        height: 100,
        width: (MediaQuery.of(context).size.width) - 20, //screen width -20
        child: Card(

            color:Colors.purpleAccent,
            child: Center(
              child: Text(got),
            )),

      );
    }
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show relevant things when someone searches
    //-->query is a property that represents entered text by user
    final suggestionList = query.isEmpty
        ? recentsrch
        : eventsinclg
        .where((str) => str.toLowerCase().startsWith(query.toLowerCase()))
        .toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        //what happens when we click suggested search
          onTap: () {
            got = suggestionList[index];

            showResults(context);
          },
          leading: Icon(Icons.arrow_right),
          title: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: suggestionList[index].substring(query.length),
                      style: TextStyle(
                          color: Colors.purpleAccent,
                          fontWeight: FontWeight.normal))
                ]),
          )),
      itemCount: suggestionList.length,
    );
  }
}
