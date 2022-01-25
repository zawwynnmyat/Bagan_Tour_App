import 'package:bagan_tour/models/place.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceDetailScreen extends StatefulWidget {

  const PlaceDetailScreen({Key key, this.place}) : super(key: key);

  final Place place;

  @override
  State<PlaceDetailScreen> createState() => _PlaceDetailScreenState();
}

class _PlaceDetailScreenState extends State<PlaceDetailScreen> {
  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height * 0.4;
     return Scaffold(
       extendBodyBehindAppBar: true,
       extendBody: true,
       appBar: AppBar(
         backgroundColor: Colors.transparent,
         elevation: 0,
         leading: CircleAvatar(
           backgroundColor: Colors.black.withOpacity(0.5),
           child: IconButton(
             icon: Icon(Icons.arrow_back),
             color: Colors.white,
             onPressed: () {
               Navigator.pop(context);
             },
           ),
         ),
       ),
       body: Stack(
         children: [
           Container(
             child: Image.asset(
                widget.place.placeImageUrl,
               height: height,
               width: MediaQuery.of(context).size.width,
               fit: BoxFit.cover,
             ),
           ),
           DelayedDisplay(
             delay: Duration(milliseconds: 100),
               fadingDuration: Duration(milliseconds: 300),
               slidingBeginOffset: const Offset(0, 1),
               child: Container(
                 height: MediaQuery.of(context).size.height * 0.7,
                 width: double.infinity,
                 margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.31),
                 padding: EdgeInsets.all(30),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(35),
                     topRight: Radius.circular(35)
                   ),
                   color: Colors.white,
                 ),
                 child: SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                   child: SafeArea(
                     top: false,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(widget.place.placeName,
                                     overflow: TextOverflow.fade,
                                     softWrap: false,
                                     maxLines: 3,
                                     style: GoogleFonts.bellota(
                                         fontSize: 22,
                                         fontWeight: FontWeight.w900,
                                         color: Colors.black,
                                     )
                                 ),
                                 SizedBox(height: 15,),
                                 Row(
                                   children: [
                                     Image(
                                       image: AssetImage('assets/bagan.png'),
                                       width: 50,
                                       height: 50,
                                     ),
                                   ],
                                 )

                               ],
                             ),
                             ClipRRect(
                               borderRadius: BorderRadius.circular(10),
                               child: Container(
                                   padding: EdgeInsets.all(5),
                                   color: Colors.black.withOpacity(0.5),
                                   child: Column(
                                     children: [
                                       Icon(Icons.star,color: Colors.white,),
                                       SizedBox(height: 3,),
                                       Text(widget.place.rating, style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),),
                                     ],
                                   )
                               ),
                             ),
                           ],
                         ),
                         SizedBox(height: 20,),
                         Wrap(
                           spacing: 10,
                           children: [
                             Chip(
                               avatar: Image(
                                 image: AssetImage(
                                   'assets/crown.png',
                                 ),
                                 fit: BoxFit.cover,
                               ),
                               label: Text(widget.place.king,
                                   style: GoogleFonts.bellota(
                                     fontSize: 15,
                                     fontWeight: FontWeight.w600,
                                     color: Colors.white,
                                   )
                               ),
                               backgroundColor: Colors.black,
                             ),
                             Chip(
                               avatar: Padding(
                                 padding: EdgeInsets.only(left: 5),
                                 child: Image(
                                   image: AssetImage(
                                     'assets/hourglass.png',
                                   ),
                                   fit: BoxFit.cover,
                                 ),
                               ),
                               label: Text(widget.place.year,
                                   style: GoogleFonts.bellota(
                                     fontSize: 15,
                                     fontWeight: FontWeight.w600,
                                     color: Colors.white,
                                   )
                               ),
                               backgroundColor: Colors.black,
                             ),
                           ],
                         ),
                         SizedBox(height: 20,),
                         Text(widget.place.info1,
                           textAlign: TextAlign.justify,
                           style: GoogleFonts.bellota(
                             fontSize: 16,
                             fontWeight: FontWeight.w600,
                             color: Colors.black,
                           ),
                         ),
                         SizedBox(height: 20,),
                         Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Center(
                               child: ClipRRect(
                                 borderRadius: BorderRadius.circular(12),
                                 child: Image(
                                   image: AssetImage(widget.place.placeImageUrl),
                                 ),
                               ),
                             ),
                             SizedBox(height: 10,),
                             Center(
                               child: Text('Figure : ${widget.place.placeName}', textAlign: TextAlign.center, style: GoogleFonts.bellota(fontSize: 15, color: Colors.black)),
                             )

                           ],
                         ),
                         SizedBox(height: 20,),
                         Text(widget.place.info2,
                           textAlign: TextAlign.justify,
                           style: GoogleFonts.bellota(
                             fontSize: 16,
                             fontWeight: FontWeight.w600,
                             color: Colors.black,
                           ),
                         ),
                         SizedBox(height: 20,),
                         Text(widget.place.info3,
                           textAlign: TextAlign.justify,
                           style: GoogleFonts.bellota(
                             fontSize: 16,
                             fontWeight: FontWeight.w600,
                             color: Colors.black,
                           ),
                         )
                       ],
                     ),
                   ),
                 ),
               )
           )

         ],
       )
     );
  }

}