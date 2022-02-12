import 'package:flutter/material.dart';

class M1 extends StatefulWidget {
  const M1({Key? key}) : super(key: key);

  @override
  _M1State createState() => _M1State();
}

class _M1State extends State<M1> {
  TextEditingController vinController = TextEditingController();
  TextEditingController countController = TextEditingController();
  TextEditingController sameVinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment:CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:[

                  Text("M1", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                  Container(
                    width: 300,
                    child: TextField(
                      controller: vinController,
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
                      controller: countController,
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

                  Container(
                    width: 300,
                    child: TextField(
                      controller: sameVinController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Type 'Y' or 'N'",
                          fillColor: Colors.white70),
                    ),
                  ),

                  RaisedButton(
                      child: Text("Submit"),
                      onPressed:(){

                      }
                  ),
                ]),
          )),
    );
  }
}
