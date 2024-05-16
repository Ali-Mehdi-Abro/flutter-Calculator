import 'package:calculator/calculator.dart';
import 'package:flutter/material.dart';

class Front_Page extends StatelessWidget {
  const Front_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  @override
   void initState() {
    super.initState();
    const splashDuration = 3;
    Future.delayed(const Duration(seconds: splashDuration), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Calculator(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.calculate,size: 100,),
          Text('Calculator',style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 40)),
          
          
          ],
        )
        
      
        
      ),
    );
  }
}