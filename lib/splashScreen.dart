import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'homePage.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  void initState(){
    Future.delayed(Duration(seconds: 6),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>homePage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(alignment: Alignment.center,
      child: Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            SizedBox(height: 300,width: 300, child:Lottie.asset("assets/carAnimation.json")),
            SizedBox(height: 20,),
            Text("Vin Go", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)])),
    );
  }
}
