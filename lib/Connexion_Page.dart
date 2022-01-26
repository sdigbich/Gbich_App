import 'package:flutter/material.dart';
import 'package:g_app/Articles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:g_app/delayed_animation.dart';
import 'package:g_app/main.dart';
import 'package:g_app/Login_page.dart';

class connexion extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        elevation: 0, 
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
            size: 30
            ),
            onPressed: () {
              Navigator.pop(context);
            },
        ),
      ),
      body: SingleChildScrollView(
  child: Column(
    children: [
      DelayedAnimation(
        delay: 1500,
        child: Container(
          height: 280,
          child: Image.asset('assets/images/img4.png'),
        ),
      ),
      DelayedAnimation(
        delay: 2500,
        child: Container( 
          margin: EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 40,
          ),
          child: Column( 
            children: [ 
              ElevatedButton( 
                    child: Text('SE CONNECTER PLUS TARD',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      
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
              SizedBox(height: 10),
              Text(
                "Acceder a vos journaux favoris et restaurer vos achats",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
      DelayedAnimation(
        delay: 3500,
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 40,
          ),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: d_red,
                  padding: EdgeInsets.all(13),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.mail_outline_outlined),
                    SizedBox(width: 10),
                    Text(
                      'EMAIL',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Color(0xFF576dff),
                  padding: EdgeInsets.all(13),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(FontAwesomeIcons.facebook),
                    SizedBox(width: 10),
                    Text(
                      'FACEBOOK',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Colors.white,
                  padding: EdgeInsets.all(13),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/img3.png',
                      height: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'GOOGLE',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    ],
  ),
),
    );
  } 
  
}