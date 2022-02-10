import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
                RaisedButton(
                    onPressed:(){

                    }),

                Text("Vin Go", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)])),
    );
  }
}
