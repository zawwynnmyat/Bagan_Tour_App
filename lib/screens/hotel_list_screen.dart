import 'package:bagan_tour/hotel_list_tile.dart';
import 'package:bagan_tour/models/hotel.dart';
import 'package:bagan_tour/screens/hotel_detail.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HotelListScreen extends StatelessWidget {

  List<Widget> hotels = [
    HotelListTile(),
    HotelListTile(),
    HotelListTile(),
    HotelListTile(),
    HotelListTile(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Hotels', style: GoogleFonts.bellota(color: Colors.white)),
        actions: [
          GestureDetector(
            onTap: () {
              showDialog(context: context, builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)
                  ),
                  title: Text('Buy Premium Version'),
                  content: Text('\"Near By\" feature will be available in Premium Version of the \"Bagan Tour\" mobile app. Thank you!'),
                  actions: [
                    TextButton(onPressed: () {
                      Navigator.pop(context, 'OK');
                    }, child: Text('OK'))
                  ],

                );
              });
            },
            child:  Row(
              children: [
                Icon(Icons.search, color: Colors.lightBlueAccent,),
                SizedBox(width: 10,),
                Text('Near By', style: TextStyle(color: Colors.lightBlueAccent, fontSize: 17)),
                SizedBox(width: 10,)
              ],
            ),
          )


        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(10.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text('\tExplore 74 Hotels', style: GoogleFonts.bellota(fontSize: 30,fontWeight: FontWeight.w700)),
              SizedBox(height: 20,),
              //Character Text
              Container(
                padding: EdgeInsets.only(
                  left: 16
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20
                    ),
                    color: Colors.black,
                    child: Text("🏡\tA\t", style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                  ),
                ),
              ),
              //A List View
              Container(
                height: 470,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 260,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HotelDetail(hotel: Hotel.hotels[index],);
                            }));
                          },
                          child: HotelListTile(hotel: Hotel.hotels[index],),
                        ),
                      );
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: Hotel.hotels.length),
              ),
              //Character Text
              Container(
                padding: EdgeInsets.only(
                    left: 16
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    color: Colors.black,
                    child: Text("🏡\tB\t", style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                  ),
                ),
              ),
              //B List View
              Container(
                height: 470,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 260,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HotelDetail(hotel: Hotel.hotels_b[index],);
                            }));
                          },
                          child: HotelListTile(hotel: Hotel.hotels_b[index],),
                        ),
                      );
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: Hotel.hotels_b.length),
              ),
              //Character Text - C
              Container(
                padding: EdgeInsets.only(
                    left: 16
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    color: Colors.black,
                    child: Text("🏡\tC\t", style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                  ),
                ),
              ),
              //C List View
              Container(
                height: 470,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 260,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HotelDetail(hotel: Hotel.hotels_c[index],);
                            }));
                          },
                          child: HotelListTile(hotel: Hotel.hotels_c[index],),
                        ),
                      );
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: Hotel.hotels_c.length),
              ),
              //Character Text - E
              Container(
                padding: EdgeInsets.only(
                    left: 16
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    color: Colors.black,
                    child: Text("🏡\tE\t", style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                  ),
                ),
              ),
              //E List View
              Container(
                height: 470,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 260,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HotelDetail(hotel: Hotel.hotels_e[index],);
                            }));
                          },
                          child: HotelListTile(hotel: Hotel.hotels_e[index],),
                        ),
                      );
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: Hotel.hotels_e.length),
              ),
              //Character Text - F
              Container(
                padding: EdgeInsets.only(
                    left: 16
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    color: Colors.black,
                    child: Text("🏡\tF\t", style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                  ),
                ),
              ),
              //F List View
              Container(
                height: 470,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 260,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HotelDetail(hotel: Hotel.hotels_f[index],);
                            }));
                          },
                          child: HotelListTile(hotel: Hotel.hotels_f[index],),
                        ),
                      );
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: Hotel.hotels_f.length),
              ),
              //Character Text - G
              Container(
                padding: EdgeInsets.only(
                    left: 16
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    color: Colors.black,
                    child: Text("🏡\tG\t", style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                  ),
                ),
              ),
              //G List View
              Container(
                height: 470,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 260,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HotelDetail(hotel: Hotel.hotels_g[index],);
                            }));
                          },
                          child: HotelListTile(hotel: Hotel.hotels_g[index],),
                        ),
                      );
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: Hotel.hotels_g.length),
              ),
              //Character Text - H
              Container(
                padding: EdgeInsets.only(
                    left: 16
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    color: Colors.black,
                    child: Text("🏡\tH\t", style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                  ),
                ),
              ),
              //H List View
              Container(
                height: 470,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 260,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HotelDetail(hotel: Hotel.hotels_h[index],);
                            }));
                          },
                          child: HotelListTile(hotel: Hotel.hotels_h[index],),
                        ),
                      );
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: Hotel.hotels_h.length),
              ),
              //Character Text - K
              Container(
                padding: EdgeInsets.only(
                    left: 16
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    color: Colors.black,
                    child: Text("🏡\tK\t", style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                  ),
                ),
              ),
              //K List View
              Container(
                height: 470,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 260,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HotelDetail(hotel: Hotel.hotels_k[index],);
                            }));
                          },
                          child: HotelListTile(hotel: Hotel.hotels_k[index],),
                        ),
                      );
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: Hotel.hotels_k.length),
              ),
              //Character Text - L
              Container(
                padding: EdgeInsets.only(
                    left: 16
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    color: Colors.black,
                    child: Text("🏡\tL\t", style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                  ),
                ),
              ),
              //L List View
              Container(
                height: 470,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 260,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HotelDetail(hotel: Hotel.hotels_l[index],);
                            }));
                          },
                          child: HotelListTile(hotel: Hotel.hotels_l[index],),
                        ),
                      );
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: Hotel.hotels_l.length),
              ),
              //Character Text - M
              Container(
                padding: EdgeInsets.only(
                    left: 16
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    color: Colors.black,
                    child: Text("🏡\tM\t", style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                  ),
                ),
              ),
              //M List View
              Container(
                height: 470,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 260,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HotelDetail(hotel: Hotel.hotels_m[index],);
                            }));
                          },
                          child: HotelListTile(hotel: Hotel.hotels_m[index],),
                        ),
                      );
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: Hotel.hotels_m.length),
              ),
              //Character Text - N
              Container(
                padding: EdgeInsets.only(
                    left: 16
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    color: Colors.black,
                    child: Text("🏡\tN\t", style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                  ),
                ),
              ),
              //N List View
              Container(
                height: 470,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 260,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HotelDetail(hotel: Hotel.hotels_n[index],);
                            }));
                          },
                          child: HotelListTile(hotel: Hotel.hotels_n[index],),
                        ),
                      );
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: Hotel.hotels_n.length),
              ),
              //Character Text - O
              Container(
                padding: EdgeInsets.only(
                    left: 16
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    color: Colors.black,
                    child: Text("🏡\tO\t", style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                  ),
                ),
              ),
              //O List View
              Container(
                height: 470,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 260,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HotelDetail(hotel: Hotel.hotels_o[index],);
                            }));
                          },
                          child: HotelListTile(hotel: Hotel.hotels_o[index],),
                        ),
                      );
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: Hotel.hotels_o.length),
              ),
              //Character Text - R
              Container(
                padding: EdgeInsets.only(
                    left: 16
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    color: Colors.black,
                    child: Text("🏡\tR\t", style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                  ),
                ),
              ),
              //R List View
              Container(
                height: 470,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 260,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HotelDetail(hotel: Hotel.hotels_r[index],);
                            }));
                          },
                          child: HotelListTile(hotel: Hotel.hotels_r[index],),
                        ),
                      );
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: Hotel.hotels_r.length),
              ),
              //Character Text - S
              Container(
                padding: EdgeInsets.only(
                    left: 16
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    color: Colors.black,
                    child: Text("🏡\tS\t", style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                  ),
                ),
              ),
              //S List View
              Container(
                height: 470,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 260,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HotelDetail(hotel: Hotel.hotels_s[index],);
                            }));
                          },
                          child: HotelListTile(hotel: Hotel.hotels_s[index],),
                        ),
                      );
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: Hotel.hotels_s.length),
              ),
              //Character Text - T
              Container(
                padding: EdgeInsets.only(
                    left: 16
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    color: Colors.black,
                    child: Text("🏡\tT\t", style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                  ),
                ),
              ),
              //T List View
              Container(
                height: 470,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 260,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HotelDetail(hotel: Hotel.hotels_t[index],);
                            }));
                          },
                          child: HotelListTile(hotel: Hotel.hotels_t[index],),
                        ),
                      );
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: Hotel.hotels_t.length),
              ),
              //Character Text - V
              Container(
                padding: EdgeInsets.only(
                    left: 16
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    color: Colors.black,
                    child: Text("🏡\tV\t", style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                  ),
                ),
              ),
              //V List View
              Container(
                height: 470,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 260,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HotelDetail(hotel: Hotel.hotels_v[index],);
                            }));
                          },
                          child: HotelListTile(hotel: Hotel.hotels_v[index],),
                        ),
                      );
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: Hotel.hotels_v.length),
              ),
              //Character Text - Y
              Container(
                padding: EdgeInsets.only(
                    left: 16
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    color: Colors.black,
                    child: Text("🏡\tY\t", style: GoogleFonts.bellota(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                  ),
                ),
              ),
              //Y List View
              Container(
                height: 470,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 260,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HotelDetail(hotel: Hotel.hotels_y[index],);
                            }));
                          },
                          child: HotelListTile(hotel: Hotel.hotels_y[index],),
                        ),
                      );
                    }, separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: Hotel.hotels_y.length),
              ),
            ],
          )

        ],
      )
    );
  }

}
