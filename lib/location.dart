import 'map_marker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Location {
  final LatLng coordinates;
  final String name;
  Location(this.coordinates, this.name);

}
List<Location> locations = [
  //Shwe Zi Gon
  Location(LatLng(21.195250168147393, 94.8937957475161), 'assets/bagan.png'),

  //Dhammayangyi Temple
  Location(LatLng(21.162017358766857, 94.87313332614482), "assets/bagan.png"),

  //Archeological Museum
  Location(LatLng(21.167856,94.855994), "assets/bagan.png", ),

  //Ananda Temple
  Location(LatLng(21.1710535812206, 94.86768769711917), 'assets/bagan.png'),

  //That Byinnyu
  Location(LatLng(21.16880458106978, 94.86293242595556), "assets/bagan.png"),

  //Sulamani Temple
  Location(LatLng(21.164924275688254, 94.88143402595549), "assets/bagan.png", ),

  //Bu Phaya
  Location(LatLng(21.176302781572833, 94.85791372595563), "assets/bagan.png", ),

  //Bagan Golden Palace
  Location(LatLng(21.17357871451683, 94.86307345706676), 'assets/bagan.png'),

  //Shwe San Daw Pagoda
  Location(LatLng(21.163783880733035, 94.86608139711913), "assets/bagan.png"),

  //Bagan Nan Myint Tower
  Location(LatLng(21.17167368592783, 94.90242295479194), "assets/bagan.png", ),

  //Tant Kyi Taung Pagoda
  Location(LatLng(21.155208585936744, 94.7877383259553), 'assets/bagan.png'),

  //Thambula Temple
  Location(LatLng(21.162986385932644, 94.90415129711913), "assets/bagan.png"),

  //Mt. Popa National Park
  Location(LatLng(20.9207070770171, 95.25339096844806), "assets/bagan.png", ),

  //Htilominlo Pahto
  Location(LatLng(21.178735181736112, 94.87946672595571), "assets/bagan.png", ),

  //Gu Byauk Gyi Myin Kabar
  Location(LatLng(21.15722408029319, 94.86085902595536), "assets/bagan.png", ),

  //Myazedi Pagoda
  Location(LatLng(21.15723893593567, 94.86139809897352), "assets/bagan.png", ),

  //Manuha Temple
  Location(LatLng(21.153259480027305, 94.85922899711892), "assets/bagan.png", ),

  //Lawkananda Pagoda
  Location(LatLng(21.12720297828177, 94.85040112595489), "assets/bagan.png", ),

  //Mahabodi Temple
  Location(LatLng(21.173287833251727, 94.86066999977837), "assets/bagan.png", ),

  //Mingalar Zedi Pagoda
  Location(LatLng(21.161152175180174, 94.8577690259554), "assets/bagan.png", ),

  //Gawdawpalin Temple
  Location(LatLng(21.17000988115072, 94.85653072595558), "assets/bagan.png", ),

  //Dhammayazika Pagoda
  Location(LatLng(21.144806979460864, 94.88335792595514), "assets/bagan.png", ),

  //Seinnyet Nyima Pagoda
  Location(LatLng(21.141689879251995, 94.85918572595509), "assets/bagan.png", ),

  //Pyathetgyi Pagoda
  Location(LatLng(21.15830788593509, 94.88911402595542), "assets/bagan.png", ),

  //Bagan
  Location(LatLng(21.1720714,94.8569119), "assets/bagan.png", ),

];

List<MapMarker> markerWidgets() {
  return locations.map((l) => MapMarker(l.name)).toList();
}
