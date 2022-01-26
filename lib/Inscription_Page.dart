import 'package:flutter/material.dart';
import 'package:g_app/Articles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:g_app/delayed_animation.dart';
import 'package:g_app/main.dart';
import 'package:g_app/Login_page.dart';


class Inscription extends StatelessWidget {
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
                "Inscrivez Vous",
                style: GoogleFonts.poppins(
                  color: d_red,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 35),
      LoginForm(),
      SizedBox(height: 100),
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
          child: Text(
            "S'INSCRIRE",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
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
                labelText: 'Nom',
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          DelayedAnimation(
            delay: 3600,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Prenoms',
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          DelayedAnimation(
            delay: 3700,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          
          DelayedAnimation(
            delay: 3800,
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
          DelayedAnimation(
            delay: 3900,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Contact',
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

