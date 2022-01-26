import 'package:flutter/material.dart';
import 'package:g_app/Articles.dart';
import 'package:g_app/Inscription_Page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:g_app/delayed_animation.dart';
import 'package:g_app/main.dart';



class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  elevation: 0,
  backgroundColor: Colors.white.withOpacity(0),
  leading: IconButton(
    icon: Icon(
      Icons.close,
      color: Colors.black,
      size: 30,
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  ),
),
      body: SingleChildScrollView(
  child: Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DelayedAnimation(
              delay: 1500,
              child: Text(
                "Connecter vous a votre compte",
                style: GoogleFonts.poppins(
                  color: d_red,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 22),
            DelayedAnimation(
              delay: 2500,
              child: Text(
                "Nous vous recommandons de vous connecter afin de nous permettre de mieux proteger vos données.",
                style: GoogleFonts.poppins(
                  color: Colors.grey[600],
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 20),
      LoginForm(),
      SizedBox(height: 10),
      Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(right: 15),
          child: TextButton(
            onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(
                builder: (context) => Inscription(),
                 ),);
            },
            child: DelayedAnimation(
              delay: 5500,
              child: 
              Text(
                "Inscrivez vous ici",
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(height: 125),
      DelayedAnimation(
        delay: 5500,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            primary: d_red,
            padding: EdgeInsets.symmetric(
              horizontal: 125,
              vertical: 13,
            ),
          ),
          child:  Column(
            children: [ 
              Text(
                'CONFIRMER',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ArticlesPage(),
              ),
            );
          },
        ),
      ),
      
    ],
  ),
),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          DelayedAnimation(
            delay: 3500,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Votre Email',
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          DelayedAnimation(
            delay: 4500,
            child: TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
                labelText: 'Mot de Passe',
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.visibility,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}