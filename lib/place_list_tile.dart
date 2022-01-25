import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlaceListTile extends StatefulWidget {
  const PlaceListTile({Key key, this.placeName, this.rating, this.imageUrl, this.isFavourite}) : super(key: key);

  final String placeName;
  final String rating;
  final String imageUrl;

  final bool isFavourite;


  @override
  State<PlaceListTile> createState() => _PlaceListTileState();
}

class _PlaceListTileState extends State<PlaceListTile> {
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



  void _savePlace(String placeName, String rating, String image) async {
    final sharedPreference = await SharedPreferences.getInstance();

    for(int i=0;i<placeNames.length;i++) {
      if(placeName == placeNames[i]) {
        sharedPreference.setStringList(i.toString(), [placeName, rating, image]);
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
                      _savePlace(widget.placeName, widget.rating, widget.imageUrl);
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
                          color: Colors.black.withOpacity(0.5),
                        ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(widget.placeName, style: GoogleFonts.bellota(fontSize: 20,fontWeight: FontWeight.w900, color: Colors.white)),
                      )
                    ),
                    SizedBox(height: 10,),
                    Container(
                        width: MediaQuery.of(context).size.width/3.5,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(7),
                            bottomRight: Radius.circular(7),
                          ),
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Icon(Icons.location_on_outlined, color: Colors.white, size: 20,),
                              SizedBox(width: 5,),
                              Text('Bagan', style: GoogleFonts.bellota(fontSize: 15,fontWeight: FontWeight.w700, color: Colors.white)),
                            ],
                          ),
                        )
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
      elevation: 12,
      shadowColor: Colors.blue,
      color: Colors.grey.shade200,
    );
  }
}
