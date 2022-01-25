
import 'dart:typed_data';

import 'package:bagan_tour/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../location.dart';
import '../marker_generator.dart';

class RestaurantMap extends StatefulWidget {

  const RestaurantMap({Key key, this.restaurant}) : super(key: key);

  final Restaurant restaurant;

  @override
  State<RestaurantMap> createState() => _RestaurantMapState();


}

class _RestaurantMapState extends State<RestaurantMap> {

  GoogleMapController mapController;

  bool mType = false;

  BitmapDescriptor customIcon;
  List<Marker> customMarkers = [];

  List<Marker> mapBitmapsToMarkers(List<Uint8List> bitmaps) {
    bitmaps.asMap().forEach((i, bmp) {
      customMarkers.add(Marker(
          markerId: MarkerId("$i"),
          position: LatLng(widget.restaurant.lat, widget.restaurant.lng),
          icon: BitmapDescriptor.defaultMarkerWithHue(10),
          infoWindow: InfoWindow(
              onTap: () {

              },
              title: widget.restaurant.name,
              snippet: widget.restaurant.phoneNumber
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
       appBar: AppBar(
         title: Text(widget.restaurant.name),
       ),
       body: Column(
         children: [
           Padding(
               padding: EdgeInsets.all(16.0),
             child: Text(
               widget.restaurant.name + ' on map',
                 style: GoogleFonts.bellota(fontSize: 25,fontWeight: FontWeight.w900),
             ),
           ),
           Padding(
             padding: EdgeInsets.all(16.0),
             child: Container(
                 height: MediaQuery.of(context).size.height / 1.9,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12.0),
                   border: Border.all(
                       width: 1,
                       color: Colors.brown
                   ),
                 ),
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
                               target: LatLng(widget.restaurant.lat, widget.restaurant.lng),
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
                                     Text('Lat: ${widget.restaurant.lat.toString()}', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                     SizedBox(height: 8,),
                                     Text('Lng: ${widget.restaurant.lng.toString()}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
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
         ],
       )
     );
  }

}