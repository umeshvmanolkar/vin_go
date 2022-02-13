import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class M1 extends StatefulWidget {
  const M1({Key? key}) : super(key: key);

  @override
  _M1State createState() => _M1State();
}

class _M1State extends State<M1> {


  TextEditingController vinCountController = TextEditingController();
  TextEditingController delayController = TextEditingController();
  TextEditingController sameVinController = TextEditingController();


  postData(String vinCount,String delay, String different) async{
    Map data = {
      'vinCount':vinCount,
      'delay':delay,
      'different':different
    };

    final response = await http.post(Uri.parse('http://192.168.29.149:8082/data'),body: data);  //API response

    if(response.statusCode == 200){            //checking status of API

      var jsonData = json.decode(response.body);

      if(jsonData['Success']=="Success!"){                                    //validating user login credentials
          setState(() {

          String jsonsDataString = response.body.toString(); // toString of Response's body is assigned to jsonDataString
          data = jsonDecode(jsonsDataString);

        });

      } else {

      }
    } else{

    }
  }

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment:CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[

                    Text("M1", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                    Container(
                      width: 300,
                      child: TextField(
                        controller: vinCountController,
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
                        controller: delayController,
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
                        onPressed:() async{
                          print(vinCountController.text);
                          print(postData(vinCountController.text, delayController.text, sameVinController.text));


                        }
                    ),
                  ]),
            ),
          )),
    );
  }
}
