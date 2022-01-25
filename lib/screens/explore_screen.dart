import 'package:bagan_tour/models/festival.dart';
import 'package:bagan_tour/models/place.dart';
import 'package:bagan_tour/place_list_tile.dart';
import 'package:bagan_tour/screens/diner_screen.dart';
import 'package:bagan_tour/screens/festival_screen.dart';
import 'package:bagan_tour/screens/hotel_list_screen.dart';
import 'package:bagan_tour/screens/lacquer_list.dart';
import 'package:bagan_tour/screens/place_detail_screen.dart';
import 'package:bagan_tour/screens/place_list_view.dart';
import 'package:flutter/material.dart';
import 'package:bagan_tour/top_cards/cards.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:bagan_tour/models/admob_helper.dart';

import '../hotel_list_tile.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {

  List<Widget> topCards = <Widget>[
    Card1(),
    Card2(),
    Card3(),
    Card4(),
    Card5(),
  ];

  List<Widget> activities(BuildContext context) => <Widget> [
    Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.purple,
          child:  IconButton(
            icon: Icon(Icons.hotel, color: Colors.white, size: 30,),
            onPressed: () {
              Navigator.push(context,  MaterialPageRoute(
                  builder: (context) {
                    return HotelListScreen();
                  }
              ));

            },
          ),
          radius: 30,
        ),
        SizedBox(height: 10),
        Text('Hotels', style: GoogleFonts.bellota(fontSize: 15,fontWeight: FontWeight.w700),)
      ],
    ),
    Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.orange,
          child:  IconButton(
            icon: Icon(Icons.local_restaurant, color: Colors.white, size: 30,),
            onPressed: () {
              Navigator.push(context,  MaterialPageRoute(
                  builder: (context) {
                    return DinerScreen();
                  }
              ));
            },
          ),
          radius: 30,
        ),
        SizedBox(height: 10),
        Text('Diner', style: GoogleFonts.bellota(fontSize: 15,fontWeight: FontWeight.w700),)
      ],
    ),
    Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.brown,
          child:  IconButton(
            icon: Icon(Icons.festival_outlined, color: Colors.white, size: 30,),
            onPressed: () {
              Navigator.push(context,  MaterialPageRoute(
                  builder: (context) {
                    return FestivalScreen();
                  }
              ));
            },
          ),
          radius: 30,
        ),
        SizedBox(height: 10),
        Text('Festivals', style: GoogleFonts.bellota(fontSize: 15,fontWeight: FontWeight.w700),)
      ],
    ),
    Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.red,
          child:  IconButton(
            icon: Icon(Icons.shopping_basket_sharp, color: Colors.white, size: 30,),
            onPressed: () {
              Navigator.push(context,  MaterialPageRoute(
                  builder: (context) {
                    return LacqueryList();
                  }
              ));
            },
          ),
          radius: 30,
        ),
        SizedBox(height: 10),
        Text('Lacquer', style: GoogleFonts.bellota(fontSize: 15,fontWeight: FontWeight.w700),)
      ],
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
       children: [
         Padding(
           padding: EdgeInsets.only(left: 25,top: 20),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text('Find the best tour', style: GoogleFonts.bellota(fontSize: 30,fontWeight: FontWeight.w700)),
               SizedBox(height: 15,),
               Text('Categories', style: GoogleFonts.bellota(fontSize: 20,fontWeight: FontWeight.w700)),
               SizedBox(height: 20,),
               Container(
                 height: 100,
                 child: ListView.separated(
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index) {
                       return activities(context)[index];
                     },
                     separatorBuilder: (context, index) {
                       return SizedBox(width: 30,);
                     },
                     itemCount: 4
                 ),
               ),
               SizedBox(height: 15,),
               Text('Popular tours', style: GoogleFonts.bellota(fontSize: 20,fontWeight: FontWeight.w700)),
               SizedBox(height: 8,),
               Container(
                 height: 300,
                 color: Color.fromRGBO(250, 250, 250, 1),
                 child: ListView.separated(
                   physics: BouncingScrollPhysics(),
                   padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 10.0,bottom: 10.0),
                   scrollDirection: Axis.horizontal,
                   itemCount: topCards.length,
                   itemBuilder: (context, index) {
                     return GestureDetector(
                       onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return PlaceDetailScreen(place: Place.topCards[index],);
                              })
                          );
                       },
                       child: topCards[index],
                     );
                   },
                   separatorBuilder: (context, index) {
                     return SizedBox(width: 8,);
                   },
                 ),
               ),
               SizedBox(height: 10,),
               PlaceListView()
             ],
           ),
         )
       ],
    );
  }
}