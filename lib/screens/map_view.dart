import 'dart:typed_data';
import 'package:bagan_tour/location.dart';
import 'package:bagan_tour/map_marker.dart';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:ui' as ui;

import '../marker_generator.dart';

class MapView extends StatefulWidget {
  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {

  BitmapDescriptor customIcon;
  List<Marker> customMarkers = [];

  List<String> placeNames = [
    'Shwe Zi Gon Pagoda', 'Dhammayangyi Temple', 'Archeological Museum',
    'Ananda Temple', 'Thatbyinnyu Phaya', 'Sulamani Temple', 'Bu Phaya',
    'Bagan Golden Palace', 'Shwesandaw Pagoda', 'Bagan Nan Myint Tower',
    'Tant Kyi Taung Pagoda', 'Thambula Temple', 'Mt. Popa National Park',
    'Htilominlo Pahto', 'Gu Byauk Gyi Myin Kabar',

    'Myazedi Pagoda', 'Manuha Temple', 'Lawkananda Pagoda',
    'Mahabodi Temple', 'Mingalazedi Pagoda', 'Gawdawpalin Temple',
    'Dhammayazika Pagoda', 'Seinnyet Nyima Pagoda', 'Pyathetgyi Temple',
    'History of Bagan'
  ];

  List<String> placeMyanmarNames = [
    'ရွှေစည်းဂုံ ဘုရား', 'ဓမ္မရံကြီး ဘုရား', 'ပုဂံပြတိုက်',
    'အာနဒ္ဒါ ဘုရား', 'သဗ္ဗေညု ဘုရား', 'စူဠာမဏိ ဘုရား', 'ဗူး ဘုရား',
    'ပုဂံ ရွှေနန်းတော်', 'ရွှေဆံတော် ဘုရား', 'ပုဂံ နန်းမြင့်မျှော်စဥ်',
    'တန့်ကြည့်တောင်', 'သမ္ဘူလ ဘုရား', 'ပုပ္ပါးတောင်', 'ထီးလိုမင်းလိုဘုရား', 'ဂူပြောက်ကြီးဘုရား',

    'မြစေတီ ဘုရား', 'မနူဟာ ဘုရား', 'လောကနန္ဒာ ဘုရား',
    'မဟာဗောဓိ ဘုရား', 'မင်္ဂလာစေတီ', 'ကန်တော့ ပုလ္လင် ဘုရား',
    'ဓမ္မရာဇက ဘုရား', 'စိန်ညက်ညီမ ဘုရား', 'ပြသာဒ်ကြီးဘုရား',
    'ပုဂံ သမိုင်း အကျဥ်း'
  ];


  CameraPosition _initialLocation = CameraPosition(
      target: LatLng(21.1736435, 94.8547428),
    zoom: 12.0
  );


  Position _currentPosition;
  String _currentAddress = "";


  GoogleMapController mapController;
  bool mType = false;
  bool isLoc = false;

  bool _isMarkersShow = false;

  List<Marker> mapBitmapsToMarkers(List<Uint8List> bitmaps) {
    bitmaps.asMap().forEach((i, bmp) {
      customMarkers.add(Marker(
        markerId: MarkerId("$i"),
        position: locations[i].coordinates,
        icon: BitmapDescriptor.fromBytes(bmp),
        infoWindow: InfoWindow(
          onTap: () {

          },
          title: placeNames[i],
          snippet: placeMyanmarNames[i]
        )
      ));
    });
  }


  _getCurrentLocation() async {

    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        //Pass the lat and long to the function
        _getAddressFromLatLng(position.latitude, position.longitude);

      });
    }).catchError((e) {
      print(e);
    });
  }

  _getAddressFromLatLng(double latitude, double longitude) async {
    try {
      List<Placemark> p = await placemarkFromCoordinates(latitude, longitude);

      Placemark place = p[0];

      setState(() {
        _currentAddress = "${place.locality}";
        print(_currentAddress);

      });
    } catch (e) {
      print(e);
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    MarkerGenerator(markerWidgets(), (bitmaps) {
      setState(() {
        mapBitmapsToMarkers(bitmaps);
      });
    }).generate(context);

  }

  @override
  void dispose() {
    // TODO: implement dispose
    mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    // Determining the screen width & height
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;


    return Container(
      height: height,
      width: width,
      child: Scaffold(

        body: Stack(
          children: <Widget>[
            GoogleMap(
              markers: _isMarkersShow ? customMarkers.toSet() : <Marker>{},
              initialCameraPosition: _initialLocation,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              mapType: mType ? MapType.satellite : MapType.normal,
              zoomGesturesEnabled: true,
              zoomControlsEnabled: false,
              onMapCreated: (GoogleMapController controller) {
                mapController = controller;

              },
              polylines: {

              },

            ),

            Positioned(
              top: 20,
              right: 25,
              child: CircleAvatar(
                backgroundColor: Colors.brown,
                radius: 25,
                child: IconButton(
                  onPressed: () {
                    _getCurrentLocation();
                    setState(() {
                      mType = !mType;
                    });
                  },
                  icon: Icon(Icons.satellite),
                  color: Colors.white,
                ),
              ),
            ),

            Positioned(
              top: 80,
              right: 25,
              child: CircleAvatar(
                backgroundColor: _isMarkersShow ? Colors.green : Colors.brown,
                radius: 25,
                child: IconButton(
                  onPressed: () {
                    _getCurrentLocation();
                    setState(() {
                      _isMarkersShow = !_isMarkersShow;
                      MarkerGenerator(markerWidgets(), (bitmaps) {
                        setState(() {
                          mapBitmapsToMarkers(bitmaps);
                        });
                      }).generate(context);
                    });
                  },
                  icon: Icon(Icons.pin_drop_outlined),
                  color: Colors.white,
                ),
              ),
            ),

            Positioned(
              top: 20,
              left: 25,
              child: CircleAvatar(
                  backgroundColor: Colors.brown,
                  radius: 25,
                  child: IconButton(
                    onPressed: () {
                      _getCurrentLocation();
                      setState(() {
                        isLoc = !isLoc;
                      });
                    },
                    icon: isLoc ? Icon(Icons.my_location) : Icon(Icons.location_searching_sharp),
                    color: Colors.white,
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}