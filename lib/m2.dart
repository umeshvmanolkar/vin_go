import 'package:flutter/material.dart';

class M2 extends StatefulWidget {
  const M2({Key? key}) : super(key: key);

  @override
  _M2State createState() => _M2State();
}

class _M2State extends State<M2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment:CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:[


                  Text("M2", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

      Container(
        width: 300,
        child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                hintText: "Enter VIN",
                fillColor: Colors.white70),
        ),
      ),

      Container(
        width: 300,
        child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                hintText: "Enter Speed",
                fillColor: Colors.white70),
        ),
      ),


      RaisedButton(
            child: Text("Submit"),
            onPressed:(){

            }
      ),

    ]),
          )));
  }
}
