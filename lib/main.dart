import 'package:flutter/material.dart';
import 'package:loginscreen_mad/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'MAD Project',
      
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),

      home: LoginPage(),
      
    );
  }
}


