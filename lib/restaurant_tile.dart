import 'package:bagan_tour/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class RestaurantTile extends StatefulWidget {

  final Restaurant restaurant;

  const RestaurantTile({Key key, this.restaurant}) : super(key: key);

  @override
  State<RestaurantTile> createState() => _RestaurantTileState();
}

class _RestaurantTileState extends State<RestaurantTile> {

  bool _isFavourite = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16.0),
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(12), topLeft: Radius.circular(12)),
                    child: Image(
                      image: AssetImage(widget.restaurant.imageUrl),
                      height: MediaQuery.of(context).size.height / 3.5,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Positioned(
                      left: 0.0,
                      bottom: 50.0,
                      child: Container(
                        width: MediaQuery.of(context).size.width/1.4,
                        color: Colors.black.withOpacity(0.4),
                        child:  Row(
                          children: [
                            const SizedBox(width: 10,),
                            Icon(Icons.access_time, size: 30, color: Colors.white,),
                            SizedBox(width: 10,),
                            Flexible(
                                child:  Text(widget.restaurant.openingTime, style: TextStyle(fontSize: 20, color: Colors.white),)
                            ),
                          ],
                        ),
                      )
                  ),
                  Positioned(
                      left: 0.0,
                      bottom: 10.0,
                      child: Container(
                        width: MediaQuery.of(context).size.width/2,
                        color: Colors.black.withOpacity(0.4),
                        child:  Row(
                          children: [
                            const SizedBox(width: 10,),
                            Icon(Icons.phone, size: 25, color: Colors.white,),
                            SizedBox(width: 10,),
                            Flexible(
                                child:  Text(widget.restaurant.phoneNumber, style: TextStyle(fontSize: 15, color: Colors.white),)
                            ),
                          ],
                        ),
                      )
                  ),
                  Positioned(
                      right: 10.0,
                      bottom: 2.0,
                      child: MaterialButton(
                        onPressed: () async {
                          String url = 'tel:' + widget.restaurant.phoneNumber;
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Text('Call Now!', style: TextStyle(color: Colors.white),),
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                      )
                  ),
                  Positioned(
                      top: 10,
                      right: 10,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              _isFavourite = !_isFavourite;
                            });

                          },
                          icon: _isFavourite ? Icon(Icons.favorite_outlined, color: Colors.red,) : Icon(Icons.favorite_outline,color: Colors.red,),
                        ),
                      )
                  )
                ],
              ),

              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(widget.restaurant.name, style: GoogleFonts.bellota(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        RatingBar.builder(
                          itemSize: 22,
                          initialRating: widget.restaurant.rating,
                          minRating: 0.1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.circle,
                            color: Colors.amber,
                            size: 50,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Text(widget.restaurant.ratingCount.toString(), style: GoogleFonts.bellota(
                          fontSize: 15,
                          color: Colors.black,
                        ))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(widget.restaurant.availableFoods, style: GoogleFonts.bellota(
                      fontSize: 15,
                      color: Colors.black,
                    )),
                    Wrap(
                      spacing: 10,
                      children: [
                        Chip(
                          elevation: 2.0,
                          backgroundColor: Colors.amber,
                          label: Text(widget.restaurant.extraService1, style: GoogleFonts.bellota(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )),
                        ),
                        Chip(
                          elevation: 2.0,
                          backgroundColor: Colors.amber,
                          avatar: Icon(Icons.restaurant_menu_sharp, color: Colors.black,),
                          label: Text('${widget.restaurant.tableCount} Tables', style: GoogleFonts.bellota(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )),
                        ),
                        Chip(
                          elevation: 2.0,
                          backgroundColor: Colors.amber,
                          label: Text(widget.restaurant.extraService2, style: GoogleFonts.bellota(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,

                          )),
                        ),
                        Chip(
                          elevation: 2.0,
                          backgroundColor: Colors.amber,
                          avatar: Icon(Icons.monetization_on_outlined, color: Colors.black,),
                          label: Text('Average: ${widget.restaurant.price} ', style: GoogleFonts.bellota(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.location_on,size: 35,color: Colors.brown,),
                        SizedBox(width: 10,),
                        Flexible(
                            child: Text(widget.restaurant.address, style: GoogleFonts.bellota(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ))
                        ),

                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}