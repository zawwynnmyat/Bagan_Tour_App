import 'package:flutter/material.dart';

class MapMarker extends StatelessWidget {
  final String name;

  MapMarker(this.name);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(
              height: 50,
              width: 60
            ),
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  width: 2,
                  color: Colors.brown,
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14))),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(2.0, 2.0, 0.0, 2.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image: AssetImage('assets/bagan.png'),
                  )
                )
              ),
            ),
          ),
          Container(
              height: 10.0,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.brown ,
                  border: Border.all(
                    color: Colors.brown,
                  ),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(14),
                      bottomLeft: Radius.circular(14)))),
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              height: 50.0,
              width: 50,
              color: Colors.brown,
            ),
          )
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width / 3, 0.0);
    path.lineTo(size.width / 2, size.height / 3);
    path.lineTo(size.width - size.width / 3, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}