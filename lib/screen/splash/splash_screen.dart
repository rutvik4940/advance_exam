import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     Future.delayed(Duration(seconds: 3),() => Navigator.pushNamed(context, 'home'),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/quotes1.png",height: 100,width: 100,),
            Text("   Quotes App",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)
          ],
        ),
      ),
    );
  }
}
