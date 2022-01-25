import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_redirect/store_redirect.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vector_math/vector_math.dart' as math;

class AboutUsScreen extends StatefulWidget {
  
  const AboutUsScreen({Key key}) : super(key: key);

  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('About us?'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16.0),
            buildProfile(),
            const SizedBox(height: 16.0,),
            Expanded(
              child: buildMenu(),
            )
          ],
        ),
      ),
    );
  }

  _callNumber() async{
    const number = '+959794403416'; //set the number here
    bool res = await FlutterPhoneDirectCaller.callNumber(number);
  }

  Widget buildMenu() {
    Future<void> _launched;

    Future<void> _openUrl(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }


    return ListView(
      physics: BouncingScrollPhysics(),
      children: [

        ListTile(
          title: const Text('💌 Send Email To Us'),
          onTap: () {
            setState(() {
              _launched = _openUrl('mailto:zawwinmyat.dev@gmail.com');
              });
          },
        ),
        ListTile(
          title: const Text('📞 Phone Call To Us',),
          onTap: () {
            _callNumber();
            //Provider.of<ProfileManager>(context, listen: false).tapOnHexaDev(true);
          },
        ),
        ListTile(
          title: const Text('⭐️ Rate Us on Google Play Store',),
          onTap: () {

            StoreRedirect.redirect(
                androidAppId: "com.hexadev.bagan_tour",
                iOSAppId: "");
            //Provider.of<ProfileManager>(context, listen: false).tapOnHexaDev(true);
          },
        ),
        ListTile(
          title: const Text('💎 Premium Features',),
          onTap: () {

            showGeneralDialog(
                context: context,
                pageBuilder: (context, anim1, anim2) {},
                barrierDismissible: true,
                barrierColor: Colors.black.withOpacity(0.4),
                barrierLabel: '',
                transitionBuilder: (context, anim1, anim2, child) {
                  return Transform.rotate(
                    angle: math.radians(anim1.value * 360),
                    child: Opacity(
                      opacity: anim1.value,
                      child: AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        title: Text('Premium Features'),
                        content: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Center(
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:AssetImage('assets/playstore_premium.png'),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius: BorderRadius.circular(12)
                                ),
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            Center(
                              child: Text(
                                'Bagan Tour Premium',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),

                            SizedBox(height: 16.0),
                            Text('❤️ No more ads..'),
                            SizedBox(height: 10,),
                            Text('❤️ \"Near By...\" feature to find nearest restaurants and hotels'),
                            SizedBox(height: 10,),
                            Text('❤️ Convenience Stores in Bagan..'),
                            SizedBox(height: 10,),
                            Text('❤️ Best Activites in Bagan..'),
                            SizedBox(height: 10,),
                            Text('❤️ Travel Planner For Bagan Tour'),
                          ],
                        ),
                        actions: [
                          TextButton(onPressed: () {
                            StoreRedirect.redirect(
                                androidAppId: "com.hexadev.bagan_tour_premium",
                                iOSAppId: "");
                          }, child: Text('Buy Premium Version')),

                          TextButton(onPressed: () {
                            Navigator.pop(context, 'Close');
                          }, child: Text('Close'))
                        ],
                      )
                    ),
                  );
                },
                transitionDuration: Duration(milliseconds: 300));
          },
        ),
      ],

    );
  }




  Widget buildProfile() {
    return Column(
      children: [
        
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image:AssetImage('assets/playstore.png'),
              fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(12)
          ),
        ),
        const SizedBox(height: 16.0),
        Text(
          'Bagan Tour',
            style: GoogleFonts.bellota(
                color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold
            )
        ),
        SizedBox(height: 16.0),
        Text(
          'Travel & Tour',
            style: GoogleFonts.bellota(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic
            )
        ),
      ],
    );
  }
}
