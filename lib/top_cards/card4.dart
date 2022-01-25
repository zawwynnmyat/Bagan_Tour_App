import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Card4 extends StatefulWidget {
  const Card4({Key key}) : super(key: key);

  @override
  State<Card4> createState() => _Card4State();
}

class _Card4State extends State<Card4> {

  void _savePlace(String placeName, String rating, String image) async {
    final sharedPreference = await SharedPreferences.getInstance();
    sharedPreference.setStringList("0", [placeName, rating, image]);
  }

  bool _isLoved = false;

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
                      _savePlace('Shwe Zi Gon Pagoda', '4.6', 'assets/shwezigon.jpeg');
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
                    Text('Shwezigon', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, color: Colors.white, size: 25,),
                        SizedBox(width: 5,),
                        Text('Bagan', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),)
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
                  'assets/shwezigon.jpeg'
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