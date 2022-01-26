import 'package:flutter/material.dart';
import 'package:g_app/Articles.dart';
import 'package:g_app/delayed_animation.dart';
import 'package:g_app/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:g_app/Connexion_Page.dart';


class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical:  60,
            horizontal: 30
          ),
          child: Column(
            children: [
              DelayedAnimation(delay: 1500, 
              child: Container(
                height: 100,
                child: Image.asset('assets/images/img1.png'),
                ),
                ),
                DelayedAnimation(delay: 2500, 
              child: Container(
                height: 350,
                child: Image.asset('assets/images/img2.png'),
                ),
                ),
                DelayedAnimation(delay: 3500, 
              child: Container( 
                margin: EdgeInsets.only(
                  top: 30,
                  bottom:  40,
                ),
                child: Text('Apprenez avec humour les nouvelles du pays, Rester informer des faits divers.                      ',
                textAlign: TextAlign.center,
                style:  GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 19,
                ),
                ),
              ),
                ),
                DelayedAnimation(
                  delay: 4500,
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton( 
                    style: ElevatedButton.styleFrom(
                      primary: d_red,
                      shape: StadiumBorder(),
                     padding: EdgeInsets.all(13)
                    ),
                    child: Text('COMMENCER',
                    style: GoogleFonts.poppins(
                      fontSize: 19,
                    ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                        builder: (context) => connexion(),
                        ),
                        );
                    },
                  ),),
                  ),
                  
            ],
          ),
        ),
      ),
    );
  }
}



