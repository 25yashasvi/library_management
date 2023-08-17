import 'package:flutter/material.dart';
import 'package:software_engineering_app/generate_record.dart';
import 'package:shared_preferences/shared_preferences.dart';


  class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
  }
List<DropdownMenuItem<String>> get dropdownItems{
  List<DropdownMenuItem<String>> menuItems=[
    DropdownMenuItem(child: Text("January",style:TextStyle(color:Colors.white,fontSize: 15)),value:"jan"),
  DropdownMenuItem(child: Text("Febuary",style:TextStyle(color:Colors.white,fontSize: 15)),value:"feb"),
  DropdownMenuItem(child: Text("March",style:TextStyle(color:Colors.white,fontSize: 15)),value:"mar"),
    DropdownMenuItem(child: Text("April",style:TextStyle(color:Colors.white,fontSize: 15)),value:"apr"),
    DropdownMenuItem(child: Text("May",style:TextStyle(color:Colors.white,fontSize: 15)),value:"may"),
    DropdownMenuItem(child: Text("June",style:TextStyle(color:Colors.white,fontSize: 15)),value:"jun"),
    DropdownMenuItem(child: Text("July",style:TextStyle(color:Colors.white,fontSize: 15)),value:"jul"),
    DropdownMenuItem(child: Text("August",style:TextStyle(color:Colors.white,fontSize: 15)),value:"aug"),
    DropdownMenuItem(child: Text("September",style:TextStyle(color:Colors.white,fontSize: 15)),value:"sep"),
    DropdownMenuItem(child: Text("October",style:TextStyle(color:Colors.white,fontSize: 15)),value:"oct"),
    DropdownMenuItem(child: Text("November",style:TextStyle(color:Colors.white,fontSize: 15)),value:"nov"),
    DropdownMenuItem(child: Text("December",style:TextStyle(color:Colors.white,fontSize: 15)),value:"dec"),
  ];
  return menuItems;
}
List<DropdownMenuItem<String>> get dropdownItems2{
  List<DropdownMenuItem<String>> menuItems=[
    DropdownMenuItem(child: Text("Computer Science (1st yr)",style:TextStyle(color:Colors.white,fontSize: 15)),value:"cs1"),
    DropdownMenuItem(child: Text("Computer Science (2nd yr)",style:TextStyle(color:Colors.white,fontSize: 15)),value:"cs2"),
    DropdownMenuItem(child: Text("Computer Science (3rd yr)",style:TextStyle(color:Colors.white,fontSize: 15)),value:"cs3"),
    DropdownMenuItem(child: Text("BCom (1st yr)",style:TextStyle(color:Colors.white,fontSize: 15)),value:"bcom1"),
    DropdownMenuItem(child: Text("BCom (1st yr)",style:TextStyle(color:Colors.white,fontSize: 15)),value:"bcom2"),
    DropdownMenuItem(child: Text("BCom (1st yr)",style:TextStyle(color:Colors.white,fontSize: 15)),value:"bcom3"),
    DropdownMenuItem(child: Text("BA (1st yr)",style:TextStyle(color:Colors.white,fontSize: 15)),value:"ba1"),

  ];
  return menuItems;
}
  class _ReportState extends State<Report> {

   String? selectedValue=null;
   String? selectedValue2=null;
    String Val1="";
    String Val2="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[50],
        appBar: AppBar(

          title: Text("GENERATE MONTHLY REPORT",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,

              )),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
        ),
        body: Column(

          children:<Widget> [
            SizedBox(height:10),
              ClipRRect(

                child: const Image(
                  height: 250,
                  width: 550,
                  image: AssetImage('i1.jpeg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
                 borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
            SizedBox(height:10),
          Container(
          child:Row(
            children:<Widget>[
              Container(
             margin: EdgeInsets.only(left:20,right:20,top:0,bottom:0),
              width:150,
              height:50,



             child:    TextFormField(
                    decoration: InputDecoration(
                labelText: "Select Month",
                labelStyle: TextStyle(color:Colors.white,
                fontSize: 20),
                fillColor: Colors.purple[200],
                filled: true,
                enabledBorder: new OutlineInputBorder(

                    borderRadius:new BorderRadius.circular(20.0)  ),

                enabled: false

    ),
             ),
              ),
      SizedBox(
        width:20,
      ),
      Container(
        margin: EdgeInsets.only(top:15),
          width:400,
          child:
                  DropdownButtonFormField(
                    menuMaxHeight: 600,
                  decoration: InputDecoration(


    fillColor: Colors.purple[200],
    filled: true,

    enabledBorder: new OutlineInputBorder(

    borderRadius:new BorderRadius.circular(10.0)  ),
    border: new OutlineInputBorder(
     borderSide:BorderSide(color:Colors.purpleAccent,width:2),
     borderRadius:new BorderRadius.circular(20.0),

     ),
        ),
                      validator: (value)=>value==null?"Select a month":null,
    dropdownColor: Colors.purple[200],
                      value:selectedValue,

                      onChanged:(String? newValue)
    {                 setState(() {
      selectedValue=newValue!;
      Val1=newValue!;
      print(selectedValue);
    });

                      },
                      // ),
                  items: dropdownItems,
    )
                 )
                 // )
                ],
              )
            ),

            Container(
                child:Row(
                  children:<Widget>[
                    Container(
                      margin: EdgeInsets.only(left:20,right:20,top:5,bottom:0),
                      width:150,
                      height:50,



                      child:    TextFormField(
                        decoration: InputDecoration(
                            labelText: "Select Department",
                            labelStyle: TextStyle(color:Colors.white,
                                fontSize: 15),
                            fillColor: Colors.purple[200],
                            filled: true,
                            enabledBorder: new OutlineInputBorder(

                                borderRadius:new BorderRadius.circular(20.0)  ),

                            enabled: false

                        ),
                      ),
                    ),
                    SizedBox(
                      width:20,
                    ),
                    Container(
                        margin: EdgeInsets.only(top:15),
                        width:400,
                        child:
                        DropdownButtonFormField(
                          menuMaxHeight: 600,
                          decoration: InputDecoration(



                            fillColor: Colors.purple[200],
                            filled: true,

                            enabledBorder: new OutlineInputBorder(

                                borderRadius:new BorderRadius.circular(10.0)  ),
                            border: new OutlineInputBorder(
                              borderSide:BorderSide(color:Colors.purpleAccent,width:2),
                              borderRadius:new BorderRadius.circular(20.0),

                            ),
                          ),
                          validator: (value)=>value==null?"Select a month":null,
                          dropdownColor: Colors.purple[200],
                          value:selectedValue2,
                          onChanged:(String? newValue2)
                          {                 setState(() {

                            selectedValue2=newValue2!;
                            Val2=newValue2!;
                            print(selectedValue2);
                          });

                          },

                          // ),
                          items: dropdownItems2,
                        )
                    )
                    // )
                  ],
                )
            ),
            SizedBox(
              height:20
            ),
            Container(
              child:Center(
                child:Container(

                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.purpleAccent, borderRadius: BorderRadius.circular(40)),

                    child: ElevatedButton(

                      onPressed: () async {
                        SharedPreferences prefs = await SharedPreferences.getInstance();


                        if((selectedValue!=null) &&(selectedValue2!=null) ){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyApp()),
                          );
                          prefs.setString('dept', Val2);
                          prefs.setString('month',Val1);

                        }

                      },
                      style:ElevatedButton.styleFrom(
                          primary:Colors.purpleAccent
                      ),

                      child: Text(
                        'GENERATE REPORT',
                        style: TextStyle(color: Colors.white, fontSize: 25,
                        ),
                          textAlign:TextAlign.center,
                      ),


                    )
                ),
              ),
            ),
          ],
         )
    );
  }
}

