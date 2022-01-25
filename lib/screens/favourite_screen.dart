import 'package:bagan_tour/favourite_place_thumbnil.dart';
import 'package:bagan_tour/home.dart';
import 'package:bagan_tour/lacquer_tile.dart';
import 'package:bagan_tour/models/place.dart';
import 'package:bagan_tour/screens/place_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:bagan_tour/models/lacquerware.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../place_list_tile.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {

  SlidableController _slidableController;

  //Test START
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

  bool haveFavouritePlaces = false;

  bool needToRefresh = false;

  void _retrievePlace() async {
    final sharedPreference = await SharedPreferences.getInstance();

    for(int i=0;i<placeNames.length;i++) {
      if(sharedPreference.containsKey(i.toString())) {
        p = sharedPreference.getStringList(i.toString());

        if(p != []) {
          setState(() {
            places.add(p);
          });
        }
      }
    }



  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _retrievePlace();
  }

  void _removePlace(String placeName) async {
    final sharedPreference = await SharedPreferences.getInstance();
    for(int i=0;i<placeNames.length;i++) {
      if(placeName == placeNames[i]) {
        sharedPreference.remove(i.toString());
      }
    }
  }


  @override
  Widget build(BuildContext context) {

    return (places.length == 0) ?
    Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            image: AssetImage('assets/empty.png'),
          ),
          Flexible(
            child: Padding(
          padding: EdgeInsets.all(16.0),
              child: Text('Not found your favourite places. Please click "Love" ❤️ icon to add a place you love to this list.',
                style: GoogleFonts.bellota(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
          )
          ),
        ],
      )
    ) :
    Padding(
      padding: EdgeInsets.all(16.0),
      child: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) {

                    return PlaceDetailScreen(place: Place.places[placeNames.indexOf(places[index][0])],);
                  }),
                );
              },
              child: FavouritePlaceThumbnil(placeName: places[index][0], rating: places[index][1], imageUrl: places[index][2], isFavourite: true,),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 1,);
          },
          itemCount: places.length
      ),
    );

  }
}