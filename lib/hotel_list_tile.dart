import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'models/hotel.dart';

class HotelListTile extends StatelessWidget {

  final Hotel hotel;
  const HotelListTile({Key key, this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)
      ),
      child: Container (
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 170,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: AssetImage(hotel.imageUrl),
                        fit: BoxFit.cover,
                      )
                  )
              ),

              SizedBox(height: 5,),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(hotel.name, style: GoogleFonts.bellota(fontSize: 20,fontWeight: FontWeight.w900, color: Colors.black)),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar.builder(
                          itemSize: 22,
                          initialRating: hotel.initialRating,
                          minRating: 0.1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                              padding: EdgeInsets.all(5),
                              color: Colors.blue,
                              child: Row(
                                children: [
                                  Icon(Icons.star,color: Colors.white,),
                                  SizedBox(width: 3,),
                                  Text(hotel.rating, style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),),
                                ],
                              )
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Wifi
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.wifi, color: Colors.blueAccent,),
                            SizedBox(width: 5,),
                            Text('Wi-Fi')
                          ],
                        ),
                        //Pool
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.pool_rounded, color: Colors.blueAccent,),
                            SizedBox(width: 5,),
                            Text('Pool')
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Parking
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.directions_car, color: Colors.blueAccent,),
                            SizedBox(width: 5,),
                            Text('Parking')
                          ],
                        ),
                        //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.fastfood_rounded, color: Colors.blueAccent,),
                            SizedBox(width: 5,),
                            Text('Buffet')
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(hotel.price, style: GoogleFonts.bellota(fontSize: 20,fontWeight: FontWeight.w900, color: Colors.black)),
                            Text('>= Price Line', style: GoogleFonts.bellota(fontSize: 15, color: Colors.black))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
      elevation: 5,
      shadowColor: Colors.black,
      color: Colors.grey.shade200,
    );
  }
}
