import 'package:flutter/material.dart';
import 'package:software_engineering_app/Cataloge.dart';
import 'package:software_engineering_app/add_book_details.dart';
import 'package:software_engineering_app/request_new_book.dart';
// import 'package:mscapp/about.dart';
 import 'home.dart';
 import 'options.dart';
 import 'Report.dart';
// import 'raise_issue.dart';
// import 'societies.dart';
// import 'publish_opportunity.dart';
// import 'add-event.dart';
// import 'delete-event.dart';
// import 'update-event.dart';
import 'admin_login.dart';

//import 'package:intl/intl.dart';

void main() => runApp(Admin());

class Admin extends StatelessWidget {
  final List<String> optList = [
    " Add New Book Details",
    " New Requests for Books",
    " Monthly Report",
    " Catalogue"
  ];

  final List<Function> funList = [
        () =>AddBook(),
        () => RequestBook(),
        () => Report(),
        () => Cataloge(),
  ];

  final List<Icon> icoList = [
    Icon(
      Icons.book_online_rounded ,
      size: 30.0,
    ),
    Icon(
      Icons.book_online_rounded,
      size: 30.0,
    ),
    Icon(
      Icons.book_online_rounded,
      size: 30.0,
    ),
    Icon(
      Icons.book_online_rounded,
      size: 30.0,
    ),
  ];

  final List<Color> colList = [
    Colors.purpleAccent,
    Colors.purpleAccent,
    Colors.purpleAccent,
    Colors.purpleAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
          title: Text("ADMIN",
          style:TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
          )),
        ),
        body: Container(
          child: new ListView.builder(
              itemCount: optList.length,
              itemBuilder: (BuildContext context, int index) =>
                  buildOptCard(context, index)),
        ));
  }

//   Widget buildOptCard(BuildContext context, int index) {
//     final allopts = optList[index];
//     final allico = icoList[index];
//     final allcol = colList[index];
//     final allfun = funList[index];

//     return new Container(
//       margin: EdgeInsets.all(10.0),
//       child: GestureDetector(
//         onTap: () {
//           Future.delayed(Duration.zero, () async {
//             Navigator.push(
//               context,
//               new MaterialPageRoute(
//                 builder: (context) => allfun(),
//               ),
//             );
//           });
//         },
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20), // if you need this
//             side: BorderSide(
//               color: Colors.grey.withOpacity(0.4),
//               width: 2,
//             ),
//           ),
//           color: allcol,

//           //

//           child: Padding(
//             padding: const EdgeInsets.only(
//                 top: 40.0, bottom: 40.0, right: 40.0, left: 20.0),
//             child: Column(
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     top: 8.0,
//                     bottom: 4.0,
//                   ),
//                   child: Row(children: <Widget>[
//                     allico,
//                     Text(
//                       allopts.toString(),
//                       style: new TextStyle(
//                         fontSize: 20.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Spacer(),
//                   ]),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
  Widget buildOptCard(BuildContext context, int index) {
    final allopts = optList[index];
    final allico = icoList[index];
    final allcol = colList[index];
    final allfun = funList[index];

    return new Container(
      margin: EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {
          Future.delayed(Duration.zero, () async {
            Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (context) => allfun(),
              ),
            );
          });
        },
        style: ElevatedButton.styleFrom(
          primary: allcol,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // <-- Radius
          ),
        ),
        child: Container(
          padding: const EdgeInsets.only(
              top: 40.0, bottom: 40.0, right: 40.0, left: 10.0),
          child: Row(
            children: <Widget>[
              allico,
              Expanded(
                child: Text(
                  allopts.toString(),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      /*
      margin: EdgeInsets.all(10.0),
      child: Card(
        color: allcol,
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, bottom: 40.0, right: 40.0, left: 10.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 4.0,
                ),
                child: Row(children: <Widget>[
                  allico,
                  Text(
                    allopts.toString(),
                    style: new TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                ]),
              ),
            ],
          ),
        ),
      ),*/
    );
  }
}
