import 'package:flutter/material.dart';

class FestivalTile extends StatefulWidget {
  const FestivalTile({Key key}) : super(key: key);


  @override
  State<FestivalTile> createState() => _FestivalTileState();
}

class _FestivalTileState extends State<FestivalTile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Row(
       children: [
         Container(
           child: Column(
             children: [
               Text('Month')
             ],
           ),
         )
       ],
     );
  }

}
