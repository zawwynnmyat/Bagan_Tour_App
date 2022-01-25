import 'package:bagan_tour/place_list_tile.dart';
import 'package:bagan_tour/screens/place_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:bagan_tour/models/place.dart';

class PlaceListView extends StatefulWidget {

  @override
  State<PlaceListView> createState() => _PlaceListViewState();
}


class _PlaceListViewState extends State<PlaceListView> {

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

  List<String> imageUrls = [
    'assets/shwezigon.jpeg',
    'assets/dhammayangyi.jpeg',
    'assets/museum.jpeg',
    'assets/ananda_temple_bagan.jpeg',
    'assets/Thatbyinnyu-Pagoda-Bagan-Myanmar1.jpeg',
    'assets/sulamani-temple.jpeg',
    'assets/buphaya-paya.jpeg',
    'assets/bagan-golden-palace.jpeg',
    'assets/shwesandaw_pagoda.jpeg',
    'assets/bagan_nan_myint tower.jpeg',
    'assets/tant_kyi_taung_pagoda.jpeg',
    'assets/thambula.jpeg',
    'assets/popa.jpeg',
    'assets/htilominlo.jpeg',
    'assets/gu_byauk_gyi.jpeg',

    'assets/Myazedi.jpeg',
    'assets/manuha_temple.jpeg',
    'assets/lawkananda-01.jpeg',
    'assets/Mahabodhi-Bihar.jpeg',
    'assets/mingalazedi_pagoda.jpeg',

    'assets/gawdawpalin-temple-bagan.jpeg',
    'assets/dhammayazika-pagoda.jpeg',
    'assets/seinnyet-nyima-pagoda-bagan.jpeg',
    'assets/pyathadar-temple-bagan.jpeg',
    'assets/bagan.jpeg'
  ];

  List<String> placeRatings = [
    '4.6', '4.6','4.3',
    '4.7', '4.6', '4.8',
    '4.5', '4.3', '4.7',
    '4.2', '4.9', '4.1',
    '4.3', '4.5', '4.2',

    '4.1', '4.5', '4.6',
    '4.4', '4.1', '4.5',
    '4.6', '4.3', '4.4', '5.0'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 16.0, 22.0, 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.separated(
            primary: false,
            shrinkWrap: true,

            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return PlaceDetailScreen(place: Place.places[index],);
                      }),
                  );
                },
                child: PlaceListTile(placeName: placeNames[index], rating: placeRatings[index], imageUrl: imageUrls[index], isFavourite: false,),
              );
            },
            itemCount: placeNames.length,
            separatorBuilder: (context, index) {
              return const SizedBox(height: 16,);
            },
          ),
        ],
      )
    );
  }

}