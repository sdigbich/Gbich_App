import 'package:flutter/material.dart';
import 'package:g_app/Connexion_Page.dart';
import 'package:g_app/Inscription_Page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:g_app/delayed_animation.dart';
import 'package:g_app/main.dart';
import 'package:g_app/Login_page.dart';

void main() {
  runApp( MyApp());
}

  class ArticlesPage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
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
        

           SearchSection(),
           ArticleSection(),
            BottomNavBarSection(),
      ],
    ),
    ),
    );
}
}

class SearchSection extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
      child: Column(
        children: [
         Row(
           children: [
             Expanded(
               child: 
               Container(
               padding: EdgeInsets.only(left: 5),
               decoration: BoxDecoration (
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey, 
                    blurRadius: 4,
                    offset: Offset(0, 1),
                    ),
                ],
               ),
             child: TextField(
               decoration:  InputDecoration(
                 hintText: 'Gbich N°125',
                 contentPadding: EdgeInsets.all(10),
                 border: InputBorder.none,
               ),
               ) 
               ),
               ),
               SizedBox(width: 10
               ),
             Container(
               height: 50,
               width: 50, 
               decoration: BoxDecoration(
               boxShadow: [
                  BoxShadow(
                    color: Colors.grey, 
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
               ),
               child: ElevatedButton(
                 onPressed: () {
                   Navigator.push(
                     context, 
                   MaterialPageRoute(
                     builder: 
                   (context){
                     return Inscription();
                   },
                   ),
                   );
                 },
                 child: Icon(
                   Icons.search,
                   color: Colors.white,
                 size: 26,
                 ),
                 style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10), 
                  shape: CircleBorder(),
                   shadowColor: Colors.white,
                   primary: d_red,
                 ),
               ),
             )
           ],
         ),
        ],
    ),
    );
  }
}

class ArticleSection extends StatelessWidget {
  final List ArticleList = [
    {
      'title': 'Gbich',
      'picture': 'assets/images/Art1.png',
      'price': '500',
    },
    {
      'title': 'Allo Police',
      'picture': 'assets/images/Art3.png',
      'price': '500',
    },
    {
      'title': ' Go Magazine',
      'picture': 'assets/images/Art2.png',
      'price': '500',
    },
    {
      'title': 'Le Codivoirien',
      'picture': 'assets/images/Art4.png',
      'price': '500',
    }
  ];
  @override 
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
            Column( 
            children: 
              ArticleList.map((hotel) {
              return ArticleCard(hotel);
              }).toList(),
            ),
        ],
      ),
    );
  }
}

class ArticleCard extends StatelessWidget {
  final Map ArticleData;
  ArticleCard(this.ArticleData);
  @override 
  Widget build(BuildContext context)  {
    return Container(
     margin: EdgeInsets.all(10),
    height: 300,
    decoration:  BoxDecoration(
     color: Colors.white,
     borderRadius: BorderRadius.all(
       Radius.circular(18)
       ,),
       boxShadow: [ 
       BoxShadow(
      color: Colors.grey.shade200,
      spreadRadius: 4,
      offset: Offset(0, 3),
       ),
       ],
    ),
    child: Column(
      children: [
        Container(
         height: 200, 
         decoration:  BoxDecoration(
           borderRadius: BorderRadius.only(
           topLeft: Radius.circular(18),
           topRight: Radius.circular(18)),
          image: DecorationImage(
            image:AssetImage(
             ArticleData['picture']
              ),
              fit: BoxFit.cover,
         ),
         ),
         child: Stack(
           children: [
           Positioned(
             top: 5,
             right: -15,
             child: MaterialButton(
               onPressed: () {},
               color: Colors.white,
               shape: CircleBorder(),
                child: Icon(
                  Icons.favorite_outline_rounded,
                  color: d_red,
                  size: 20,
                ),
              ),  
           ),
         ],),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(ArticleData['title'],
              style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),),
              Text('FCFA' +ArticleData['price'],
               style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.w800,),
                ),
         ],
          ),
        ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.place,
                  color: d_red,
                  size: 14,
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
        child: Row(
          children: [
         SizedBox(
            width: 20),
           
          ],
        ),

      )
      ],),
    );
  }
}


class BottomNavBarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.grey[600],
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: d_red,
          ),
          label: 'Explorer',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: d_red,
          ),
          label: 'Favoris',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: d_red,
          ),
          label: 'Compte',
        ),
      ],
    );
  }
}
