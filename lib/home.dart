import 'package:bagan_tour/screens/about_us_screen.dart';
import 'package:bagan_tour/screens/explore_screen.dart';
import 'package:bagan_tour/screens/favourite_screen.dart';
import 'package:bagan_tour/screens/map_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  bool _isFabTapped = false;

  List<Widget> pages = <Widget> [
    ExploreScreen(),
    FavouriteScreen(),
    MapView()
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Bagan Tour', style: GoogleFonts.bellota(color: Colors.white))
        ),
        backgroundColor: Colors.brown,
        elevation: 2.0,
        leading: IconButton(
          icon: Icon(Icons.public, color: Colors.brown,),
          onPressed: () {

          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline, color: Colors.white,),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return AboutUsScreen();
                  })
              );
            },
          ),
        ],
      ),

        body: _isFabTapped ? pages[2] : pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(

        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            _isFabTapped = false;
          });
        },
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.brown,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Places',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.brown.withOpacity(0.5),
        elevation: 2.0,
        backgroundColor: Colors.brown,
        child: Icon(Icons.map_outlined, size: 30,),
        onPressed: () {
          setState(() {
            _isFabTapped = true;
          });
        },
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}
