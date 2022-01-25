import 'package:bagan_tour/models/restaurant.dart';
import 'package:bagan_tour/restaurant_tile.dart';
import 'package:bagan_tour/screens/restaurant_map.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DinerScreen extends StatelessWidget {
  const DinerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurants', style: GoogleFonts.bellota(color: Colors.white)),
        actions: [
          GestureDetector(
            onTap: () {
              showDialog(context: context, builder: (BuildContext context) {
                 return AlertDialog(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(18)
                   ),
                   title: Text('Buy Premium Version'),
                   content: Text('\"Near By\" feature will be available in Premium Version of the \"Bagan Tour\" mobile app. Thank you!'),
                   actions: [
                     TextButton(onPressed: () {
                       Navigator.pop(context, 'OK');
                     }, child: Text('OK'))
                   ],

                 );
              });
            },
            child:  Row(
              children: [
                Icon(Icons.search, color: Colors.lightBlueAccent,),
                SizedBox(width: 10,),
                Text('Near By', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 17)),
                SizedBox(width: 10,)
              ],
            ),
          )


        ],
      ),
      body: Container(
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {

              return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return RestaurantMap(restaurant: Restaurant.restaurants[index],);
                      })
                  );
                },
                child:  RestaurantTile(restaurant: Restaurant.restaurants[index],),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 1,);
            },
            itemCount: Restaurant.restaurants.length
        ),
      ),
    );
  }

}