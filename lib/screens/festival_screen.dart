import 'package:bagan_tour/models/festival.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FestivalScreen extends StatefulWidget {

  const FestivalScreen({Key key}) : super(key: key);

  @override
  State<FestivalScreen> createState() => _FestivalScreenState();
}

class _FestivalScreenState extends State<FestivalScreen> {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text('Festivals in Bagan', style: GoogleFonts.bellota(color: Colors.white)),
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 20,
        ),
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  print('Tapped ${index}');
                },
                child: ListTile(
                  contentPadding: EdgeInsets.all(12),
                  style: ListTileStyle.drawer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  leading: Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.brown,
                      ),
                      child: Column(
                        children: [
                          Text(
                            Festival.festivals[index].monthStart,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                          Container(
                              width: 56,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                color: Colors.blue.shade100,
                              ),
                              child: Center(
                                child: Text(
                                  Festival.festivals[index].startDay,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              )),
                        ],
                      )
                  ),
                  trailing: Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.brown,
                      ),
                      child: Column(
                        children: [
                          Text(
                            Festival.festivals[index].monthEnd,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                          Container(
                              width: 56,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                color: Colors.blue.shade100,
                              ),
                              child: Center(
                                child: Text(
                                  Festival.festivals[index].endDay,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              )),
                        ],
                      )
                  ),
                  title: Text(
                    Festival.festivals[index].name ,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    Festival.festivals[index].myanmarMonth,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              );
            },
            itemCount: Festival.festivals.length),
      )
    );
  }
}