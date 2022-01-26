import 'package:flutter/material.dart';
import 'package:g_app/delayed_animation.dart';
import 'package:g_app/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:g_app/Connexion_Page.dart';


class DetailPage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold ( 
      appBar: MyAppBar(),
    body: SingleChildScrollView(
      child: Column(
      children: [ 
            BottomNavBarSection(),
      ],
    ),
    ),
    );
}
}


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
Size get preferredSize => new Size.fromHeight(50);
@override 
Widget build(BuildContext context) {
  return AppBar (
    leading:  IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.grey, size: 20,),
      onPressed: null,
      ),
    title: Text('Explorer', 
    style: GoogleFonts.nunito(
      color: Colors.black,
      fontSize: 22,
      fontWeight: FontWeight.w400,
    ),
    ),
    actions: [
        IconButton(
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: Colors.grey[800],
            size: 20,
          ), 
          onPressed: null,
        ),
        IconButton(
          icon: Icon(
            Icons.place,
            color: Colors.grey[800],
            size: 20,
          ),
          onPressed: null,
        ),
      ],
      centerTitle: true,
    backgroundColor: Colors.white,
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
    height: 230,
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
    child: Row(
      children: [
        Container(
         height: 140, 
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
                
           ),),
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