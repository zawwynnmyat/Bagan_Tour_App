class Hotel {
   String name;
   String rating;
   String price;
   double initialRating;
   String imageUrl;

   String phoneNumber;
   String address;

   double lat;
   double lng;

   Hotel(this.name, this.rating, this.price, this.initialRating, this.imageUrl, this.phoneNumber, this.address, this.lat, this.lng);

   static List<Hotel> hotels = [
      Hotel('Acacia Hotel', '4.0', '80,000 MMK', 4.0, 'assets/hotels/acacia_3.jpeg', '+959954411063', 'Airport Main Road, Near Aung Myay Thar Monastery, Nyaung Oo, Old Bagan', 21.16926522553348, 94.92586182538044),
     Hotel('Ananta Bagan Hotel', '4.6', '72621 MMK', 4.6, 'assets/hotels/ananta_bagan_1.jpeg','061 246 0384', 'Wet Gyi Inn, Nyaung Oo, Bagan 11221 Myanmar',21.189496586284122, 94.8919421959155),
      Hotel('Arthawka Hotel', '4.2', '25953 MMK', 4.2, 'assets/hotels/arthawka-hotel.jpeg','+95 9 258 726 812', '160 Cherry Road, New Bagan, Bagan, Myanmar, Myanmar (Burma)',21.133088285801275, 94.86955397660782),
      Hotel('Aureum Palace Hotel', '4.3', '92000 MMK', 4.3, 'assets/hotels/aureum_palace.jpeg', '+95 9 896 502964', 'Nyaung Oo, Bagan Nan Myint Tower, Near, Min Nanthu Village, 05231, Myanmar (Burma)',21.17167016608879, 94.902402841394),
      Hotel('Areindmar Hotel', '4.2', '48849 MMK', 4.2, 'assets/hotels/eareindmar_hotel.jpeg', '+95 61 65 049', '1st Street, Between Nweni & Cherry Street, New Bagan 11861, Cherry St, New Bagan, Myanmar (Burma)',21.132999429352182, 94.85768955017518),

     Hotel('Amazing Bagan Resort', '4.3', '65000 MMK', 4.4,'assets/hotels/amazing_bagan_resort.jpeg', '+95 61 246 0035', 'Near Bagan Nyaung Oo Golf Club, Nyaung Oo',21.17902679241938, 94.9054187111461),
     Hotel('Amata Garden Resort', '4.4', '90294 MMK', 4.4, 'assets/hotels/amata-garden-resort-bagan.jpeg', '+95 1 665 126', 'Phwar Saw Village, Thu Htay Kan kwin, Kwin No. (1544) East New Bagan, Old Bagan, Myanmar (Burma)',21.133759755405627, 94.87145618299512),

   ];

   static List<Hotel> hotels_b = [
     Hotel('Bagan Landmark Hotel', '3.7', '60000 MMK', 3.7, 'assets/hotels/bagan_airport.jpeg', '061 61 228', 'No.60, 61, 62, Airport Road, Aung Myay That (6) Qtr, Nyaung Oo',21.17238738983778, 94.92389058056987),
     Hotel('Bagan Boutique Hotel', '3.0', '27427 MMK', 3.0, 'assets/hotels/bagan_boutique_hotel.jpeg', '09 798 482 162', 'Sein Pan Street, between 2nd street and Sabae Road, Khan Laung, New Bagan',21.130113340969633, 94.85876872537638),
     Hotel('Bagan Central Hotel', '3.7', '30090 MMK', 3.7, 'assets/hotels/bagan_central_hotel.jpeg', '+95 9 264 383 089', 'Kha Yay Road, between 2nd street x Sabae Road, New Bagan',21.132016319431163, 94.85830359832846),
     Hotel('Bagan Empress Hotel', '4.0', '27500 MMK', 4.0, 'assets/hotels/bagan_express_hotel.jpeg', '09 975744200', 'No. 107, Yuzana Street, khanlatt Quarter, Anawaratha Ward, New Bagan',21.130430121991107, 94.86047851490949),
     Hotel('Bagan HMWE Hotel', '4.4', '30000 MMK', 4.4, 'assets/hotels/bagan_hmwe.jpeg', '09 430 73936', 'H-107, Yuzana Street, Btw Sa Bal & 3rd street New Bagan, 05231, Myanmar (Burma)',21.13043044012138, 94.86048758817438),
     Hotel('Bagan Lodge Hotel', '4.5', '200000 MMK', 4.5, 'assets/hotels/bagan_lodge.jpeg', '+95 9 777 077335', 'Myat Lay Road, New Bagan, Nyaung Oo Township, Myanmar (Burma)',21.135391384484066, 94.8741774736632),
     Hotel('Bagan Princess', '3.4', '54277 MMK', 3.4, 'assets/hotels/bagan_princess.jpeg', '+95 9 492 25312', 'Bagan-Nyaung Oo Main Road, Wetkyee Inn Village, Archaeological Zone, Nyaung Oo',21.186190991099007, 94.88791225013868),
     Hotel('Bagan Shwe See Sein Hotel', '3.7', '32546 MMK', 3.7, 'assets/hotels/bagan-shwe-see-sein-hotel.jpeg', '+95 61 246 4051', 'Kayay Street South of the market, New Bagan',21.132308128952, 94.86471950535162),
     Hotel('Bagan Thande Hotel', '4.2', '60000 MMK', 4.2, 'assets/hotels/bagan_thande_hotel.jpeg', '061 60 025', 'Bagan Archeological Zone, Old Bagan',21.16740617243001, 94.8543119440968),
     Hotel('Bagan Thiripyitsaya', '4.3', '11929 MMK', 4.3, 'assets/hotels/bagan_thiripyitsaya.webp', '+95 61 60 048', 'Bagan Archeological Zone, Bagan Nyaung Oo',21.16427057155015, 94.85386711481836),
     Hotel('Bagan Umbra Hotel', '4.2', '59594 MMK', 4.2, 'assets/hotels/bagan_umbra_hotel.jpeg', '+95 9 256 016 382', 'Lanmadaw 3 Rd, Nyaung-U 05231, Myanmar (Burma)',21.185175057156943, 94.8856453382781),
     Hotel('Bagan Vertex Hotel', '4.1', '30000 MMK', 4.1, 'assets/hotels/bagan_vertex_hotel.jpeg', '+95 9 40333 3123', '5WQ6+MPV, Nyaung-U, Myanmar (Burma)',21.189228520970893, 94.91181546027767),
     Hotel('Bagan View Hotel', '4.5', '38533 MMK', 4.5, 'assets/hotels/bagan_view_hotel.jpeg', '+95 9 44479 0476', 'Jasmin Road, Between Pon Nyat Street and Khwar Nyo Street, New Bagan',21.134873323893583, 94.85900056544983),
     Hotel('Bagan Village Hotel', '3.9', '70000 MMK', 3.9, 'assets/hotels/bagan_village_hotel.jpeg', '09 516 3862', 'Chauk Road, New Bagan',21.032445127460857, 94.85952039099215),
     Hotel('Bagan Wynn Hotel', '4.0', '70000 MMK', 4.0, 'assets/hotels/bagan_wynn_hotel.jpeg', '+95 9 256 555 515', 'Near Bagan Airport, Kone Tan Gyi',21.16978300397921, 94.92525666155571),
     Hotel('Bagan Star Hotel', '4.2', '40000 MMK', 4.2, 'assets/hotels/bagan-star-hotel.jpeg', '+95 9 783 888808', 'Anawrahta Rd, Zayawaddy Quarter, Nyaung-U',21.192581887573144, 94.9078117397121),
     Hotel('Bagan Theiddhi Hotel', '3.9', '63388 MMK', 3.9, 'assets/hotels/bagan_theiddhi_hotel.jpeg', '061 65 045', 'Myat Lay Street, Anaw Ra Htar Block, Na Ra Theinga Quarter, New Bagan',21.130398529073673, 94.87094679060752),
   ];

   static List<Hotel> hotels_c = [
     Hotel('Cherry Bagan Hotel', '4.6', '45000 MMK', 4.6, 'assets/hotels/cherry_bagan_hotel.jpeg', '+95 9 45222 9797', '35/36 , 9th Street , Hotel Zone 4 Hotel Zone 4 , Gang Gar Quarter , new Bagan, Old Bagan 11101, Myanmar (Burma)',21.08424395501033, 94.86080235730394),
     Hotel('Comfort Bagan Hotel', '4.6', '30000 MMK', 4.6, 'assets/hotels/comfort_bagan_hotel.webp', '+95 9 44366 0101', '578 Anawrahta Rd, Nyaung-U',21.190694195932313, 94.90100689395109),
     Hotel('Crown Prince Hotel', '3.7', '25983 MMK', 3.7, 'assets/hotels/crown_prince_hotel.jpeg', '+95 61 65 407', 'Khat Tar Street, Shwe Loung Block, Kyansittha Quarter, New Bagan',21.133762065786808, 94.85654612743627),
   ];

   static List<Hotel> hotels_e = [
     Hotel('Emerald Bagan Hotel', '4.2', '32000 MMK', 4.2, 'assets/hotels/emerald_bagan_hotel.jpeg', '09 787044459', 'Myo Shaung Road, Nyaung Oo',21.16496990790095, 94.93744217103415),
   ];

   static List<Hotel> hotels_f = [
     Hotel('Famous Hotel Bagan', '4.2', '72000 MMK', 4.2, 'assets/hotels/famous_hotel_bagan.jpeg', '09 431 14552', 'Kyauk Padaung Main Road, Between Airport and Bus Stations, Old Bagan',21.163394093430046, 94.92661534861136),
     Hotel('Fortune Bagan Hotel', '3.2', '21000 MMK', 3.2, 'assets/hotels/fortune_bagan_hotel.jpeg', '09 250 046 212', 'NO (6)Aung myay Thar, 3rd St, Nyaung-U, Myanmar (Burma)',21.17507335549364, 94.92017521426413),
   ];

   static List<Hotel> hotels_g = [
     Hotel('Gracious Bagan Hotel', '4.1', '32000 MMK', 4.1, 'assets/hotels/gracious_bagan_hotel.jpeg', '+95 9 253 940 882', 'Nyaung-U, Myanmar (Burma)',21.09020103868176, 94.86234005178726),
     Hotel('Grand Empire Hotel', '3.2', '24000 MMK', 3.2, 'assets/hotels/grand_empire_hotel.jpeg', '+95 61 60 206', 'Beside, Lanmadaw Street',21.200428476673817, 94.90654611662949),
   ];

   static List<Hotel> hotels_h = [
     Hotel('Heritage Hotel Bagan', '4.4', '110000 MMK', 4.4, 'assets/hotels/heritage-bagan-hotel.jpeg', '+95 61 246 1193', 'Bagan - Nyaung Oo Airport Road, Myay Nal Lay Qtr, Nyaung-U',21.171298367170472, 94.92303533544069),
     Hotel('Hotel Anjali', '4.1', '35280 MMK', 4.1, 'assets/hotels/hotel_anjali_bagan.jpeg', '09 40311 1061', 'Shwe Kant Kaw St, Nyaung Oo',21.189169206148225, 94.91484986503775),
     Hotel('Hotel Glorious', '5.0', '40000 MMK', 5.0, 'assets/hotels/hotel_glorious.jpeg', '09 220 1808', 'Aung Myay Thar St, Nyaung Oo',21.17546064043819, 94.9168363336708),
     Hotel('Hotel Raza Gyo', '4.0', '45000 MMK', 4.0, 'assets/hotels/hotel_raza_gyo.jpeg', '+95 61 65 326', 'Myatlay St, Thamudaric Qtr, New Bagan',21.133540290175677, 94.87002448798854),
     Hotel('Hotel Yadanarbon', '3.7', '42511 MMK', 3.7, 'assets/hotels/hotel_yadanarbon.jpeg', '+95 61 65 240', 'Myat Lay Road, New Bagan',21.13419227792511, 94.87059303836698),
   ];

   static List<Hotel> hotels_k = [
     Hotel('Kaday Aung Hotel', '4.2', '52000 MMK', 4.2, 'assets/hotels/kaday_aung_hotel.jpeg', '09 204 3212', 'Hninn Pann Street, Hteeminyin Block, Kyansittha Quarter, New Bagan',21.13700057450912, 94.86071608500968),
     Hotel('Kaytumadi Dynasty Hotel', '4.2', '32577 MMK', 4.2, 'assets/hotels/kaytumadi_dynasty_hotel.jpeg', '01 381 743', 'Myat Lay Street (near Lawkananda Pagoda), New Bagan',21.128860434520313, 94.87095843989226),
     Hotel('Kumudra Hotel', '4.0', '39623 MMK', 4.0, 'assets/hotels/kumudra_hotel.jpeg', '+95 61 65 402', 'Corner of 5th & Daw Na St, Pyu-Saw-Htee Qtr,New bagan, New Bagan',21.138604757396845, 94.86386129698779),
     Hotel('Kyaw Hotel', '3.3', '40000 MMK', 3.3, 'assets/hotels/kyaw_hotel.jpeg', '+95 61 65 132', 'Nwe Ni Street, Shwe Laung Qtr, Bagan Nyaung Oo, New Bagan',21.133147647468757, 94.85662471954895),
   ];

   static List<Hotel> hotels_l = [
     Hotel('La Casa Di Bagan', '3.3', '41000 MMK', 3.3, 'assets/hotels/la_casa_di_bagan.jpeg', '+95 61 65 214', 'No.9, Holding No. (163, 171), Corner of Khayay Road and Myatlay Road, Kyan Sit Thar Quarter Myanmar.​, New Bagan',21.132992557213903, 94.87014103836692),
     Hotel('Large Golden Pot Hotel', '3.9', '27000 MMK', 3.9, 'assets/hotels/large_golden_pot.jpeg', '+95 9 797 749276', 'Corner of Anawarahta Road and Yarmanya Road, Nyaung Oo',21.19478130734007, 94.90748328081786),
     Hotel('Law Ka Nat Hotel', '3.5', '27000 MMK', 3.9, 'assets/hotels/law_ka_nat.jpeg', '+95 61 65 046', 'Khayay Road, Tamudarit Ward, New Bagan',21.13303350587416, 94.86860838899266),
     Hotel('Lawka Thitsar Hotel', '4.3', '23765 MMK', 4.3, 'assets/hotels/lawka_thitsar_hotel.jpeg', '+95 9 45536 6663', 'Corner of Chauk Main Road & Thapyay Road, Kham Long, Anawratha Qt, New Bagan',21.12873033369754, 94.85506739251119),
     Hotel('Look Myanmar Inn', '3.2', '40000 MMK', 3.2, 'assets/hotels/look_myanamar_inn.jpeg', '061 246 4055', '86 Khatter St, New Bagan',21.13429626502231, 94.86273685852605),
   ];

   static List<Hotel> hotels_m = [
     Hotel('Manisandar Hotel', '4.3', '28541 MMK', 4.3, 'assets/hotels/manisandar_hotel.jpeg', '+95 61 65 437', 'Corner of 7th Street x Hnin Si Street, Kyansitthar Quarter, New Bagan, Myanmar (Burma)',21.135992143631725, 94.86638048022064),
     Hotel('Maya Bagan Hotel', '4.4', '34543 MMK', 4.4, 'assets/hotels/maya_bagan_hotel.jpeg', '+95 9 513 5145', 'Corner of 7th Street & Thabyay Road, Anawrahta Ward, New Bagan',21.12893180373863, 94.86673760761013),
     Hotel('My Place Hotel', '5.0', '45000 MMK', 5.0, 'assets/hotels/my_place_hotel.jpeg', '+95 9 44799 1030', 'Corner of Anawrahta Road & Thiri Pyitsaya 4th St ( FIT St, Old Bagan 05232, Myanmar (Burma)',21.19126963198317, 94.9018793435767),
     Hotel('Myanmar Han Hotel', '4.3', '38000 MMK', 4.3, 'assets/hotels/myanmar_han_hotel.jpeg', '+95 9 778 777785', '33-B Kyauk Pa Daung-Nyaung U Highway, beside Denko Station, Bagan, Nyaung U 22290, Myanmar (Burma)',21.133263314081212, 94.94858386133507),
     Hotel('Myanmar Treasure Resort', '4.3', '70000 MMK', 4.3, 'assets/hotels/myanmar-treasure-resort.jpeg', '+95 9 862 4980', 'Kayay St, New Bagan, Myanmar (Burma)',21.130998123399426, 94.86754155544604),
   ];

   static List<Hotel> hotels_n = [
     Hotel('NK Betelnut Hotel', '3.7', '68000 MMK', 3.7, 'assets/hotels/nk_betelnut_hotel.jpeg', '+95 61 65 054', 'Kayay St, New Bagan, Myanmar (Burma)',21.13261204871067, 94.86299862121182),
     Hotel('Nanda Garden Hotel', '4.1', '38446 MMK', 4.1, 'assets/hotels/nanda_garden_hotel.jpeg', '+95 9 42299 1122', 'Bagan Nyaung U Main Road No:7 Wet-Kyi_Inn Ward, Nyaung U',21.18861764321662, 94.89004009924862),
   ];

   static List<Hotel> hotels_o = [
     Hotel('Ostello Bello Hotel', '4.4', '37356 MMK', 4.4, 'assets/hotels/ostello_hotel_bagan.jpeg', '09 40315 3387', 'Anawrahtar Quarter, Main Road, New Bagan',21.132062924080092, 94.8608747431758),
   ];

   static List<Hotel> hotels_r = [
     Hotel('Royal Aykare Lodge Hotel', '4.0', '46000 MMK', 4.0, 'assets/hotels/royal_aykare_lodge_hotel.jpeg', '+95 9 954 440645', 'No 7, Zizawar St. Between 2nd & 3rd, Bagan',21.17383050590498, 94.92029180773574),
     Hotel('Royal Bagan Hotel', '3.9', '49000 MMK', 3.9, 'assets/hotels/royal_bagan_hotel.jpeg', '+95 9 44644 6001', 'Anawrahta Road, Bagan-Nyaung U',21.19412126337302, 94.90529460848424),
     Hotel('Royal House', '4.0', '91668 MMK', 4.0, 'assets/hotels/royal_house.jpeg', '+95 61 246 0977', 'No-7, Wet Kyi Inn Block , Beside Gu Pyaut Gyi Pagoda Bagan-Nyaung Oo Main Road, Wett Kyi Inn Quarter ,Bagan Nyaung Oo,Myanmar (Burma)',21.186440378587314, 94.8928024259558),
     Hotel('Ruby True Hotel', '4.4', '56193 MMK', 4.4, 'assets/hotels/ruby_true_hotel.jpeg', '+95 9 254 443 453', 'Myat Lay Road, New Bagan',21.128319778356527, 94.87037659711858),
   ];

   static List<Hotel> hotels_s = [
     Hotel('Sakura Inn Hotel', '4.2', '60297 MMK', 4.2, 'assets/hotels/sakura_inn_hotel.jpeg', '+95 9 964 460048', 'Bagan Archaeological Zon, Bagan Nyaung Oo, Old Bagan, 11861 Bagan, Myanmar No. 13/C, Ahnawyahtar St. & Junction of Nyaung Oo-Kyauk Pandaung, Old Bagan 11861, Myanmar (Burma)',21.16628049543861, 94.85482899419664),
     Hotel('Shwe Na Di', '4.0', '20000 MMK', 4.0, 'assets/hotels/shwe_na_di_hotel.jpeg', '09 4025 10136', 'Lanmadaw 3 Road, Nyaung Oo',21.19735907356147, 94.90235253968262),
     Hotel('Shwe Poe Eain Hotel', '3.8', '27204 MMK', 3.8, 'assets/hotels/shwe_poe_eain_hotel.jpeg', '+95 9 259 290 211', 'No. 185/186 Khayay Road, Shwe Laung, Kyansitthar Qtr, New Bagan, Myanmar New Bagan',21.132629978848154, 94.85842979681078),
     Hotel('Shwe Yee Pwint Hotel', '4.0', '60202 MMK', 4.0, 'assets/hotels/shwe_yee_pwint_hotel.jpeg', '09 431 84694', 'Kant Kaw Street, Anawrahta Quater New Bagan',21.131212161767635, 94.85756724235975),
     Hotel('Sincere Smile Hotel', '3.8', '34840 MMK', 3.8, 'assets/hotels/sincere_smile_hotel.jpeg', '09 431 76607', 'Bagan - Chauk Rd, Sein Pan Street, New Bagan',21.12951783234585, 94.85531369450227),
     Hotel('Sky Palace Hotel', '3.9', '47147 MMK', 3.9, 'assets/hotels/sky_palace_hotel.jpeg', '09 256 314 119', 'Nweni Street, Between 2nd street and Sabae Street New Bagan',21.133644734583683, 94.85774409497022),
     Hotel('Sky View Hotel', '4.2', '24000 MMK', 4.2, 'assets/hotels/sky_view_hotel.jpeg', '+95 61 61 255', 'Shwe Kant Kaw Street, Nyaung-U',21.188751189747418, 94.91501555543697),
     Hotel('Su Tine San Royal Palace Hotel', '3.9', '66406 MMK', 3.9, 'assets/hotels/su_tine_san_royal_palace.jpeg', '+95 61 65 001', 'Pon Nyat Street, Thamudarit Qtr, KyanSittThar Block, New Bagan',21.13590538594718, 94.86902607786912),
     Hotel('Sunrise Bagan Hotel', '4.9', '21000 MMK', 4.9, 'assets/hotels/sunrise_bagan_hotel.jpeg', '+95 9 550 4891', 'AungMyayThar 2st,Near Airport,Near RailwayStation,Near Bus Station, Nyaung-U 11101, Myanmar (Burma)',21.176096449666822, 94.9185591147421),
     ];

   static List<Hotel> hotels_t = [
     Hotel('Temple View Hotel Bagan', '3.9', '27199 MMK', 3.9, 'assets/hotels/temple_view_hotel_bagan.jpeg', '+95 61 65 493', 'No-9, Myat Lay Street, Thamudarit Qtr, Kyan Sitt Thar Block, New Bagan',21.134862718420905, 94.87011150317805),
     Hotel('Thante Hotel', '4.1', '55000 MMK', 4.1, 'assets/hotels/thande_hotel.jpeg', '+95 61 60 315', 'Corner of Pyu Saw Hti Street and Ngat Pyit Taung Street, Nyaung Oo',21.19610228591474, 94.90895996828326),
     Hotel('Thazin Garden Hotel', '4.0', '84252 MMK', 4.0, 'assets/hotels/thazin_garden_hotel.jpeg', ' +95 61 65 035', 'No: 22, Thazin Road, Archaeological Province, New Bagan',21.128805582169907, 94.86446996153671),
     Hotel('The Hotel @ Tharabar Gate', '4.4', '110000 MMK', 4.4, 'assets/hotels/the_hotel_tharabar_gate.jpeg', '09 204 2228', 'Near Tharabar Gate, Old Bagan',21.173739220309347, 94.86522846841616),
     Hotel('The Regency Hotel', '4.2', '56000 MMK', 4.2, 'assets/hotels/the_regency_hotel.jpeg', '09 777876017', 'Beside Nyaung Oo-Kyauk Pa Taung Road Near by Shwe Pyi Highway Bus Terminal Nyaung Oo',21.157669385935417, 94.93065182595541),
     ];

   static List<Hotel> hotels_v = [
     Hotel('Villa Bagan Hotel', '4.7', '65000 MMK', 4.7, 'assets/hotels/villa_bagan_hotel.jpeg', '+95 61 246 4049', 'No. 9, Khwanyo Street, Kyan Sit Thar Quarter, New Bagan',21.134827906925498, 94.86945003527771),
     ];

   static List<Hotel> hotels_y = [
     Hotel('Yun Myo Thu Hotel', '4.2', '22525 MMK', 4.2, 'assets/hotels/yun_myo_thu_hotel.jpeg', '09 784 512 021', 'Between Khwar Nyo & Khat Tar Street, Shwe Laung (East), Kyan Sitt Thar Block, New Bagan',21.134167797265313, 94.85773252883635),
     ];
}