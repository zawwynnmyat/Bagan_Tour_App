class Restaurant {

  String imageUrl;
  String name;
  double rating;
  int ratingCount;
  String availableFoods;
  int price;
  String address;
  String extraService1;
  String extraService2;
  String tableCount;
  String openingTime;
  String phoneNumber;
  double lat;
  double lng;

  Restaurant(this.imageUrl, this.name, this.rating, this.ratingCount, this.availableFoods, this.price, this.address, this.extraService1, this.extraService2, this.tableCount,this.openingTime, this.phoneNumber, this.lat, this.lng);

  static List<Restaurant> restaurants = [
    //1
     Restaurant('assets/restaurants/ts_bagan_restaurant.jpeg',
         'TS Bagan Restaurant',
          4.5,
          201,
          '\tChinese, Asian, Thai, Burmese . \$',
          5000,
         'Thiripyitsayar (4) St, No(5) Ward, Bagan Nyaung Oo, Mandalay , Myanmar',
       '🍾 Beer & Alcohol',
       'Free Wifi',
       '20',
       '07:00 AM - 10:00 PM',
       '+959251540535',
         21.19109053333742,
         94.90052959229897
     ),

    //2
    Restaurant('assets/restaurants/indian-hut-restaurant.jpeg',
        'Indian Hut Restaurant',
        4.5,
        164,
        '\tIndian, Asian, Burmese. \$',
        7000,
        'Thi Ri Pyitsaya4 Street, Between Lanmadaw Road and Anawratha Road, Nyaung U, Bagan 05231 Myanmar',
        'Delivery Services',
        'Wifi',
        '14',
      '10:00 AM - 10:30 PM',
      '+959444889055',
        21.19168530946688,
        94.90105360029312
    ),

    //3
    Restaurant('assets/restaurants/la_pizza_2.jpeg',
        'La Pizza 2',
        4.5,
        239,
        '\tItalian, Pizza, European . \$',
        6900,
        'Kayay street / Bagan / New Bagan / Myanmar, Bagan Myanmar',
        'Vegetarian Friendly',
        'Vegan Options',
        'N/A',
        '11:30 AM - 9:30 PM',
      '+959257859646',
        21.132482251446895,
        94.86029634482604
    ),

    //4
    Restaurant('assets/restaurants/kyaw_kitchen.jpeg',
        'Kyaw Kitchen',
        4.5,
        261,
        '\tAsian, Burmese . \$',
        9000,
        'High School Road, 4th street, Bagan 05232 Myanmar',
        'Vegetarian Friendly',
        'Vegan Options',
        'N/A',
        '10:30 AM - 9:30 PM',
        '+959259754811',
        21.134986858476317,
        94.8621220266767
    ),

    //5
    Restaurant('assets/restaurants/yar_pyi.jpeg',
        'Yar Pyi Vegetarian Restaurant',
        4.5,
        704,
        '\tAsian, Burmese . \$',
        9000,
        'Bagan-Nyaung U Road North Of Ananda Temple Gateway, Bagan Myanmar',
        'Gluten Free Options',
        'Vegan Options',
        'N/A',
        '07:00 AM - 10:00 PM',
        '+95 9 40250 0675',
        21.173311337681827,
        94.86729496158732
    ),

    //6
    Restaurant('assets/restaurants/khaing_shwe_wah.jpeg',
        'Khaing Shwe Wah',
        4.5,
        702,
        '\tAsian, Healthy, Burmese . \$',
        5000,
        'Bagan-Nyaung U Road North Of Ananda Temple Gateway, Bagan Myanmar',
        'Gluten Free Options',
        'Vegan Options',
        'N/A',
        '07:00 AM - 10:00 PM',
        '+959402512622',
        21.174243320374718,
        94.86737516436868
    ),

    //7
    Restaurant('assets/restaurants/sanon_restaurant.jpeg',
        'Sanon Restaurant',
        4.5,
        635,
        '\tAsian, Fusion, Burmese . \$',
        10000,
        'Pyu Saw Hti Street Next to Thante Hotel, Bagan Myanmar',
        'Private Car Parking',
        'Wine, Beer, Alcohol',
        '20',
        '10:00 AM - 10:00 PM',
        '+959451951950',
        21.196571907209123,
        94.90910363825742
    ),

    //8
    Restaurant('assets/restaurants/san-thi-dar-restaurant.jpeg',
        'San Thi Dar',
        4.5,
        416,
        '\tAsian,Burmese,Vegetarian . \$',
        4000,
        'Myin Kabar Villliage on the road between New Bagan and Old Bagan, Bagan Myanmar',
        'Wifi',
        'Beer, Alcohol',
        '8',
        'N/A - N/A',
        '+959265670033',
        21.156177702026056,
        94.85984083691339
    ),

    //9
    Restaurant('assets/restaurants/elodie.jpeg',
        'Elodie Restaurant',
        4.5,
        274,
        '\tChinese, Asian, Thai . \$',
        7000,
        '3rd Street, Corner of Khwanyo Street, Bagan 05232 Myanmar',
        'Free Wifi',
        'Beer, Alcohol',
        '15',
        '08:00 AM - 10:00 PM',
        '+959422943320',
        21.13450740098635,
        94.86059855900065
    ),

    //10
    Restaurant('assets/restaurants/delicious.jpeg',
        'Delicious',
        4.5,
        257,
        '\tChinese, Asian, Burmese . \$',
        8500,
        '3rd Street Behind Ostello Bello Hotel, New Bagan, Bagan Myanmar',
        'Free Wifi',
        'Beer, Alcohol',
        '13',
        'N/A - N/A',
        '+959259112126',
        21.1315742685325,
        94.86066324898293
    ),

    //11
    Restaurant('assets/restaurants/la_terrazza.jpeg',
        'La Terrazza',
        4.5,
        584,
        '\tItalian, Pizza, European . \$',
        5000,
        'Yarkhintar St. Bagan zone, near Shwezigon Pagoda, Nyaung U, Bagan Myanmar',
        'Beer, Alcohol',
        'Vegan Options',
        '25',
        '11:00 AM - 10:30 PM',
        '+959402630878',
        21.19330185879777,
        94.89944672860243
    ),

    //12
    Restaurant('assets/restaurants/star_beam.jpeg',
        'Star Beam',
        4.5,
        1134,
        '\tEuropean, Asian, Burmese . \$',
        6000,
        'Bagan 84414 Myanmar',
        'Vegetarian Friendly',
        'Vegan Options',
        'N/A',
        '09:00 AM - 10:00 PM',
        '+959970616476',
        21.132314639982535,
        94.8653974559631
    ),

    //13
    Restaurant('assets/restaurants/a_little_bit_of_bagan.jpeg',
        'A Little Bit of Bagan',
        4.0,
        356,
        '\tBurmese, Vegan Options . \$',
        5000,
        'Thiripyitsayar (4) St, No(5) Ward, Bagan Nyaung Oo, Mandalay , Myanmar',
        'Beer & Alcohol',
        'Free Wifi',
        '20',
        '07:00 AM - 10:00 PM',
        '+9592043601',
        21.191591018353467,
        94.90093639217065
    ),

    //14
    Restaurant('assets/restaurants/sharky.jpeg',
        'Sharky \'s',
        4.5,
        175,
        '\tEuropean, Vegan Options . \$',
        8000,
        'Near Shwezigon Pagoda, Nyaung U, Bagan Myanmar',
        'Vegan Options',
        'Vegetarian Friendly',
        'N/A',
        '08:00 AM - 10:00 PM',
        '+959454862928',
        21.19220323291343,
        94.89550063547965
    ),

    //15
    Restaurant('assets/restaurants/black_bamboo.jpeg',
        'Black Bamboo',
        4.0,
        1024,
        '\tEuropean, Asian, Burmese . \$',
        5000,
        'Yar Thin Thar Street, Nyaung U, Bagan Myanmar',
        'Vegan Options',
        'Vegetarian Friendly',
        'N/A',
        'N/A - N/A',
        '+956160782',
        21.193416794092713,
        94.90006542707862
    ),
    //15
    Restaurant('assets/restaurants/bibo.jpeg',
        'Bibo',
        4.5,
        761,
        '\tAsian, Thai, Burmese . \$',
        3000,
        'Yarza Thin Gyan 3rd Street, Nyaung U, Bagan 05231 Myanmar',
        'Wine, Beer & Alcohol',
        'Free Wifi',
        '20',
        '10:00 AM - 10:00 PM',
        '+959402555241',
        21.190202857325552,
        94.89802577458386
    ),

    //16
    Restaurant('assets/restaurants/royal_restaurant.jpeg',
        'Royal Restaurant',
        4.5,
        204,
        '\tIndian, Indonesian, Vegetarian . \$',
        3500,
        'Main Road Golden Palace Compound, Bagan Myanmar',
        'Vegan Options',
        'Vegetarian Friendly',
        'N/A',
        '08:00 AM - 10:00 PM',
        '+956165345',
        21.188701797209195,
        94.89855334838539
    ),

  ];

}