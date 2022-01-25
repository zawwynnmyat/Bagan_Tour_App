
class CardModel {

  String label;
  String location;
  String imageUrl;
  String rating;
  bool isFavourite;

  CardModel(this.label, this.location, this.imageUrl, this.rating, this.isFavourite);

  static List<CardModel> cards = [
     CardModel('Ballon', 'bagan', 'assets/bagan.jpeg', '4.8', false),
    CardModel('Ballon2', 'bagan', 'assets/bagan.jpeg', '4.8', false),
  ];
}