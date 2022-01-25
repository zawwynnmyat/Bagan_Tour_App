import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'card_model.dart';
import 'package:google_fonts/google_fonts.dart';

class Card1 extends StatefulWidget {
  const Card1({Key key, this.cardModel}) : super(key: key);
  final CardModel cardModel;

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {

  bool _isLoved = false;

  void _savePlace(String placeName, String rating, String image) async {
    final sharedPreference = await SharedPreferences.getInstance();
    sharedPreference.setStringList("3", [placeName, rating, image]);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              topLeft: Radius.circular(20)
          )
      ),
      child: Container(
        child: Stack(
          children: [
            //Bookmark Button
            Positioned(
              right: 20,
              top: 20,
              child: Container(
                child: Center(
                  child: IconButton(
                    color: Colors.red,
                    icon: _isLoved ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                    onPressed: () {
                      setState(() {
                        _isLoved = !_isLoved;
                      });
                      _savePlace('Ananda Temple', '4.7', 'assets/ananda_temple_bagan.jpeg');
                    },
                  ),
                ),
                constraints: const BoxConstraints.expand(
                    width: 40,
                    height: 40
                ),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(45)
                ),
              ),
            ),
            Positioned(
                left: 20,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ananda Temple', style: GoogleFonts.bellota(fontSize: 20,fontWeight: FontWeight.w900, color: Colors.white)),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, color: Colors.white, size: 20,),
                        SizedBox(width: 5,),
                        Text('Bagan', style: GoogleFonts.bellota(fontSize: 15,fontWeight: FontWeight.w700, color: Colors.white))
                      ],
                    ),
                  ],
                )
            ),
            Positioned(
              left: 20,
              top: 0,
              child: Container(
                  constraints: const BoxConstraints.expand(
                      width: 40,
                      height: 70
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/bookmark.png')
                      )
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.star, color: Colors.white,),
                        Text('4.8', style: TextStyle(color: Colors.white, fontSize: 12),)
                      ],
                    ),
                  )
              ),
            )

          ],
        ),
        constraints: const BoxConstraints.expand(
            width: 200,
            height: 300
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                topLeft: Radius.circular(20)
            ),
            image: DecorationImage(
              image: AssetImage(
                  'assets/ananda_temple_bagan.jpeg'
              ),
              fit: BoxFit.cover,
            )
        ),
      ),
      elevation: 5,
      color: Colors.grey.shade200,
    );
  }
}