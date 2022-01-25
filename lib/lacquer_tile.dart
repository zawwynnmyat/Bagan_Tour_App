import 'package:bagan_tour/models/lacquerware.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LacqueryTile extends StatefulWidget {

  const LacqueryTile({Key key, this.lacquerwareShop}) : super(key: key);

  final Lacquerware lacquerwareShop;

  @override
  State<LacqueryTile> createState() => _LacqueryTileState();
}

class _LacqueryTileState extends State<LacqueryTile> {

  @override
  Widget build(BuildContext context) {
     return Padding(
       padding: EdgeInsets.all(16.0),
       child: Card(
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(12.0)
         ),
         elevation: 2.0,
         child: Container(
           child: Column(
             children: [
               Stack(
                 children: [
                   ClipRRect(
                     borderRadius: BorderRadius.only(topRight: Radius.circular(12), topLeft: Radius.circular(12)),
                     child: Image(
                       image: AssetImage(widget.lacquerwareShop.imgUrl),
                       height: MediaQuery.of(context).size.height / 3.5,
                       width: MediaQuery.of(context).size.width,
                       fit: BoxFit.cover,
                     ),
                   ),
                   Positioned(
                     bottom: 35,
                       child: Container(
                         width: MediaQuery.of(context).size.width / 1.3,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.only(
                             topRight: Radius.circular(5),
                             bottomRight: Radius.circular(5)
                           ),
                           color: Colors.black.withOpacity(0.5)
                         ),
                         child: Padding(
                           padding: EdgeInsets.all(16.0),
                           child: Text(widget.lacquerwareShop.name, style: GoogleFonts.bellota(
                               fontSize: 18,
                               color: Colors.white,
                               fontWeight: FontWeight.w900),),
                         )
                       )
                   ),

                   Positioned(
                     top: 15,
                       right: 15,
                       child: CircleAvatar(
                         backgroundColor: Colors.brown,
                         radius: 20,
                         child: CircleAvatar(
                           backgroundColor: Colors.white,
                           radius: 17,
                           child: Text(widget.lacquerwareShop.number.toString(), style: GoogleFonts.bellota(
                               fontSize: 25,
                               color: Colors.brown,
                               fontWeight: FontWeight.w900),),
                         )
                       )
                   ),

                   Positioned(
                       left: 0.0,
                       bottom: 8.0,
                       child: Container(
                         width: MediaQuery.of(context).size.width/2,
                         color: Colors.brown.withOpacity(0.4),
                         child:  Row(
                           children: [
                             const SizedBox(width: 10,),
                             Icon(Icons.access_time, size: 20, color: Colors.white,),
                             SizedBox(width: 10,),
                             Flexible(
                                 child:  Text(widget.lacquerwareShop.openingTime,
                                   style: GoogleFonts.bellota(
                                       fontSize: 15,
                                       color: Colors.white,
                                       fontWeight: FontWeight.w600
                                   ),)
                             ),
                           ],
                         ),
                       )
                   ),
                 ],
               ),
               Padding(
                 padding: EdgeInsets.all(12.0),
                 child: Text(widget.lacquerwareShop.description,
                     textAlign: TextAlign.justify,
                     style: GoogleFonts.bellota(
                         fontSize: 15,
                         color: Colors.black,
                         fontWeight: FontWeight.w600
                     )
                 ),
               ),
               Padding(
                 padding: EdgeInsets.all(12.0),
                 child: Row(
                   children: [
                     Icon(Icons.location_on, color: Colors.brown, size: 35,),
                     SizedBox(width: 20,),
                     Flexible(
                         child: Text(widget.lacquerwareShop.address, style: GoogleFonts.bellota(
                             fontSize: 16,
                             color: Colors.black,
                             fontWeight: FontWeight.bold),)
                     )

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