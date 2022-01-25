import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Card3 extends StatefulWidget {
  const Card3({Key key}) : super(key: key);

  @override
  State<Card3> createState() => _Card3State();
}

class _Card3State extends State<Card3> {

  bool _isLoved = false;

  void _savePlace(String placeName, String rating, String image) async {
    final sharedPreference = await SharedPreferences.getInstance();
    sharedPreference.setStringList("1", [placeName, rating, image]);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
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
                      _savePlace('Dhammayangyi Temple', '4.6', 'assets/dhammayangyi.jpeg');
                    },
                  ),
                ),
                constraints: const BoxConstraints.expand(
                    width: 40,
                    height: 40
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
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

                    Text('Dhammayangyi', style: GoogleFonts.bellota(fontSize: 20,fontWeight: FontWeight.w900, color: Colors.white)),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, color: Colors.white, size: 25,),
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
                        Text('4.3', style: TextStyle(color: Colors.white, fontSize: 12),)
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
                  'assets/dhammayangyi.jpeg'
              ),
              fit: BoxFit.cover,
            )
        ),
      ),
      elevation: 8,
      color: Colors.purple,
    );
  }
}