import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavouritePlaceThumbnil extends StatefulWidget {
  const FavouritePlaceThumbnil({Key key, this.placeName, this.rating, this.imageUrl, this.isFavourite}) : super(key: key);

  final String placeName;
  final String rating;
  final String imageUrl;

  final bool isFavourite;


  @override
  State<FavouritePlaceThumbnil> createState() => _FavouritePlaceThumbnilState();
}

class _FavouritePlaceThumbnilState extends State<FavouritePlaceThumbnil> {
  bool _isLoved = false;
  double _width = 0.0;
  double _height = 0.0;

  List<String> p = [];
  List<List<String>> places = [];

  List<String> placeNames = [
    'Shwe Zi Gon Pagoda',
    'Dhammayangyi Temple',
    'Archeological Museum',
    'Ananda Temple',
    'Thatbyinnyu Phaya',
    'Sulamani Temple',
    'Bu Phaya',
    'Bagan Golden Palace',
    'Shwesandaw Pagoda',
    'Bagan Nan Myint Tower',
    'Tant Kyi Taung Pagoda',
    'Thambula Temple',
    'Mt. Popa',
    'Htilominlo Pahto',
    'Gu Byauk Gyi',
    'Myazedi Pagoda',
    'Manuha Temple',
    'Lawkananda pagoda',
    'Mahabodhi temple',
    'Mingalazedi pagoda',
    'Gawdawpalin Temple',
    'Dhammayazika Pagoda',
    'Seinnyet Nyima Pagoda',
    'Pyathadar Temple',
    'History of Bagan'
  ];

  void _removePlace(String placeName) async {
    final sharedPreference = await SharedPreferences.getInstance();
    for(int i=0;i<placeNames.length;i++) {
      if(placeName == placeNames[i]) {
        sharedPreference.remove(i.toString());
      }
    }
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height / 4;

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
        width: _width,
        height: _height,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width/1.5,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(7),
                            bottomRight: Radius.circular(7),
                          ),
                          color: Colors.deepPurple.withOpacity(0.5),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(widget.placeName, style: GoogleFonts.bellota(fontSize: 20,fontWeight: FontWeight.w900, color: Colors.white)),
                        )
                    ),

                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, color: Colors.white, size: 20,),
                        SizedBox(width: 5,),
                        Text('Bagan', style: GoogleFonts.bellota(fontSize: 15,fontWeight: FontWeight.w700, color: Colors.white)),
                      ],
                    ),
                  ],
                )
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    padding: EdgeInsets.all(5),
                    color: Colors.black.withOpacity(0.5),
                    child: Column(
                      children: [
                        Icon(Icons.star,color: Colors.white,),
                        SizedBox(height: 3,),
                        Text(widget.rating, style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),),
                      ],
                    )
                ),
              ),
            ),

          ],
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
                  widget.imageUrl
              ),
              fit: BoxFit.cover,
            )
        ),
      ),
      elevation: 2,
      shadowColor: Colors.brown,
      color: Colors.grey.shade200,
    );
  }
}
