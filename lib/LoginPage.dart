

import 'package:TWSkart/HomePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //logo
      body:Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:4),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30,
                horizontal: 90),
                child: Image.asset('assets/images/Logo.png'),
              ),

              Text("Wireless. Effortless.",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade900
              ),
              ),
              SizedBox(height: 10),
              Text("Effortless wireless audio that delivers freedom, clarity, and convenience anywhere.",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
             SizedBox(height: 50),
             GestureDetector(onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
             },
               child: Container(
                 width: 335,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(24),
                   color: Colors.black
                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(25),
                   child: Text("Shop Now",
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 22,
                     fontWeight: FontWeight.bold
                   ),
                   textAlign: TextAlign.center,),
                 ),
               ),
             )
            ],
          ),
        ),
      ),
      
    );
  }
}
