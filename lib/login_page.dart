import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    final title = Center(
        child: Text(
        "Sign In",  
            style: GoogleFonts.getFont('Lobster',
            fontSize: 35,
            height: 1,
            color: Colors.black,
        )
        
      ),
    );
    
    
    final userprofilepic = Padding(
      padding: EdgeInsets.all(20),
        child: Hero(
        tag: 'hero',
        child: SizedBox(
          height: 160,
          child: Image.asset('assets/logo.png'),
        )
      ),
    );


    final username = Center(
      child: Text(
        "Parinda Sathsara",  
            style: GoogleFonts.getFont('Ubuntu Condensed',
            fontSize: 24,
            height: 1,
            
            color: Colors.black,
        )
        
        
      ),
    );

    final inputEmail = Padding(
      padding: EdgeInsets.only(bottom: 10,top: 50),
      child: TextField(
        
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(

          prefixIcon: Icon(Icons.supervised_user_circle),
          hintText: 'Email',
          
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          )
        ),
      ),
    );

    final inputPassword = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.admin_panel_settings),
          hintText: 'Password',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          )
        ),
      ),
    );

    final buttonLogin = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        
        height: 56,
        child: RaisedButton(
          
          child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 20)),
          
          color: Colors.black,
          shape: RoundedRectangleBorder(
            
            borderRadius: BorderRadius.circular(50)
          ),
          onPressed: () {
          },
        ),
      ),
    );


    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFFFB74D), Color(0xFFF57C00)])),

      child: Scaffold(


        backgroundColor: Colors.transparent,
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[
              title,
              userprofilepic,
              username,
              inputEmail,
              inputPassword,
              buttonLogin,
              
            ],
          ),
        ),
      )
    );
  }
}