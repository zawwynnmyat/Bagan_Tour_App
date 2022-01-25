import 'package:bagan_tour/lacquer_tile.dart';
import 'package:flutter/material.dart';
import 'package:bagan_tour/models/lacquerware.dart';
import 'package:google_fonts/google_fonts.dart';

class LacqueryList extends StatelessWidget {
  const LacqueryList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lacquerware Shops', style: GoogleFonts.bellota(color: Colors.white)),
      ),
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
          itemBuilder: (builder, index) {
            return LacqueryTile(lacquerwareShop: Lacquerware.lacquerWareShops[index],);
          },
          separatorBuilder: (builder, index) {
            return SizedBox(height: 1,);
          },
          itemCount: Lacquerware.lacquerWareShops.length
      ),
    );
  }
}