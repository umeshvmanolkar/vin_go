import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'm1.dart';
import 'm2.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}
 
class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(alignment: Alignment.center,
          child: Column(
              crossAxisAlignment:CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text("Vin Go", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                RaisedButton(
                  child: Text("M1"),
                    onPressed:(){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>M1()));
                    }
                    ),
                RaisedButton(
                    child: Text("M2"),
                    onPressed:(){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>M2()));
                    }),



              ])),
    );
  }
}
