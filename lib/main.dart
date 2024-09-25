import 'package:TWSkart/Component/cart.dart';
import 'package:TWSkart/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:TWSkart/Component/cart.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => Cart(),
    builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ),
    );
  }
}
