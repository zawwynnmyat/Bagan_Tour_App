import 'dart:typed_data';

import 'package:bagan_tour/models/hotel.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../location.dart';
import '../marker_generator.dart';


class HotelDetail extends StatefulWidget {

  const HotelDetail({Key key, this.hotel}) : super(key: key);

  final Hotel hotel;

  @override
  State<HotelDetail> createState() => _HotelDetailState();


}

class _HotelDetailState extends State<HotelDetail> {
  List<Widget> containers = <Widget>[
    Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Facilities', style: GoogleFonts.bellota(fontSize: 20,fontWeight: FontWeight.w900, color: Colors.black)),
        ],
      ),
    )
  ];

  GoogleMapController mapController;

  bool mType = false;

  BitmapDescriptor customIcon;
  List<Marker> customMarkers = [];

  List<Marker> mapBitmapsToMarkers(List<Uint8List> bitmaps) {
    bitmaps.asMap().forEach((i, bmp) {
      customMarkers.add(Marker(
          markerId: MarkerId("$i"),
          position: LatLng(widget.hotel.lat, widget.hotel.lng),
          icon: BitmapDescriptor.defaultMarkerWithHue(10),
          infoWindow: InfoWindow(
              onTap: () {

              },
              title: widget.hotel.name,
              snippet: widget.hotel.phoneNumber
          )
      ));
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    MarkerGenerator(markerWidgets(), (bitmaps) {
      setState(() {
        mapBitmapsToMarkers(bitmaps);
      });
    }).generate(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: MediaQuery.of(context).size.height/5,
              flexibleSpace: FlexibleSpaceBar(
                  title: Text(widget.hotel.name, style: GoogleFonts.bellota(fontSize: 20,fontWeight: FontWeight.w900, color: Colors.white)),
                  background: Image(
                    image: AssetImage(widget.hotel.imageUrl),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text('Facilities', style: GoogleFonts.bellota(fontSize: 20,fontWeight: FontWeight.w900, color: Colors.black)),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children:  [
                                      CircleAvatar(
                                        child: Icon(Icons.wifi),
                                        radius: 20,
                                      ),
                                      SizedBox(height: 10,),
                                      Text("Wi-Fi", style: GoogleFonts.bellota(fontSize: 15,fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                  Column(
                                    children:  [
                                      CircleAvatar(
                                        child: Icon(Icons.pool_rounded),
                                        radius: 20,
                                      ),
                                      SizedBox(height: 10,),
                                      Text("Pool", style: GoogleFonts.bellota(fontSize: 15,fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                  Column(
                                    children:  [
                                      CircleAvatar(
                                        child: Icon(Icons.directions_car),
                                        radius: 20,
                                      ),
                                      SizedBox(height: 10,),
                                      Text("Parking", style: GoogleFonts.bellota(fontSize: 15,fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                  Column(
                                    children:  [
                                      CircleAvatar(
                                        child: Icon(Icons.fastfood),
                                        radius: 20,
                                      ),
                                      SizedBox(height: 10,),
                                      Text("Buffet", style: GoogleFonts.bellota(fontSize: 15,fontWeight: FontWeight.w700),)
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Text('Address', style: GoogleFonts.bellota(fontSize: 20,fontWeight: FontWeight.w900, color: Colors.black)),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.phone_forwarded_rounded, size: 40,color: Colors.blue,),
                                      SizedBox(width: 10,),
                                      Text(widget.hotel.phoneNumber, style: GoogleFonts.bellota(fontSize: 18,fontWeight: FontWeight.w700),),
                                    ],
                                  ),

                                  MaterialButton(onPressed: () async {
                                    String url = 'tel:' + widget.hotel.phoneNumber;
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                    child: Text('Call Now!', style: TextStyle(color: Colors.white),),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    color: Colors.green,
                                  )
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined, size: 40,color: Colors.blue,),
                                  SizedBox(width: 10,),
                                  Flexible(
                                    child: Text(widget.hotel.address, style: GoogleFonts.bellota(fontSize: 18,fontWeight: FontWeight.w700),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Padding(
                            padding: EdgeInsets.all(16.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                  width: 1,
                                color: Colors.brown
                              ),
                            ),

                            height: 400,
                            child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                ),
                              child: Stack(
                                children: [
                                  GoogleMap(
                                    markers: customMarkers.toSet(),
                                    compassEnabled: true,
                                    initialCameraPosition: CameraPosition(
                                        target: LatLng(widget.hotel.lat, widget.hotel.lng),
                                        zoom: 12.0
                                    ),
                                    myLocationEnabled: true,
                                    myLocationButtonEnabled: false,
                                    mapType: mType ?  MapType.satellite : MapType.normal,
                                    zoomGesturesEnabled: true,
                                    zoomControlsEnabled: false,
                                    onMapCreated: (GoogleMapController controller) {
                                      mapController = controller;

                                    },
                                  ),
                                  Positioned(
                                    top: 20,
                                    right: 25,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.green,
                                      radius: 25,
                                      child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            mType = !mType;
                                          });
                                        },
                                        icon: Icon(Icons.satellite),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    top: 20,
                                    left: 25,
                                    child: Container(
                                        width: MediaQuery.of(context).size.width/2,
                                        color: Colors.black.withOpacity(0.3),
                                      child: Column(
                                        children: [
                                        Text('Lat: ${widget.hotel.lat.toString()}', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                          SizedBox(height: 8,),
                                          Text('Lng: ${widget.hotel.lng.toString()}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                                        ],
                                      )

                                    )
                                  ),

                                  Positioned(
                                      top: 150,
                                      left: 25,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.green,
                                        radius: 25,
                                        child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              mapController.animateCamera(
                                                CameraUpdate.zoomIn(),
                                              );
                                            });
                                          },
                                          icon: Icon(Icons.add),
                                          color: Colors.white,
                                        ),
                                      ),
                                  ),

                                  Positioned(
                                    top: 220,
                                    left: 25,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.green,
                                      radius: 25,
                                      child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            mapController.animateCamera(
                                              CameraUpdate.zoomOut(),
                                            );
                                          });
                                        },
                                        icon: Icon(Icons.remove),
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            )
                          ),
                        ),

                        Padding(
                            padding: EdgeInsets.all(16),
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Text('Room Price', style: GoogleFonts.bellota(fontSize: 20,fontWeight: FontWeight.w900, color: Colors.black)),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Icon(Icons.monetization_on_outlined, size: 40,color: Colors.blue,),
                                  SizedBox(width: 10,),
                                  Text('${widget.hotel.price} and above', style: GoogleFonts.bellota(fontSize: 18,fontWeight: FontWeight.w700),),
                                ],
                              ),
                            ],
                          ),
                        ),

                        CarouselSlider(
                          items: [
                            //1st Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: AssetImage(widget.hotel.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            //2nd Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image:AssetImage(widget.hotel.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            //3rd Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: AssetImage(widget.hotel.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                          ],
                          //Slider Container properties
                          options: CarouselOptions(
                            height: 180.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 2),
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.easeIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration: Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: containers.length,
              ),

            ),
          ],
        )
    );
  }
}
