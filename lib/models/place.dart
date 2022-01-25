class Place {
  final String placeName;
  final String placeImageUrl;
  final String rating;

  final String king;
  final String year;

  final String info1;
  final String info2;
  final String info3;

  Place(this.placeName, this.placeImageUrl, this.rating, this.king, this.year, this.info1, this.info2, this.info3);


  static List<Place> places = [
    //1 : Shwe Zi Gon
      Place(
        'Shwe Zi Gon Pagoda',
        'assets/shwezigon.jpeg',
        '4.6',

          'Anawrahta',
          '1090',

        //Info1
        'The Shwezigon Pagoda is one of the oldest and most impressive monuments of Bagan.'
            'Most noticeable is the huge gold plated pagoda glimmering in the sun. The design of the Shwezigon Pagoda'
            ' has been copied many times across Burma over the centuries.Several shrines and temple buildings have been '
            'added to the complex since construction of the stupa in the year 1090. As the pagoda enshrines a number of '
            'sacred Buddhist relics, it is an important pilgrimage site for Buddhists.The Shwezigon festival held during'
            ' the 9th month of the Burmese calender (December) attracts thousands of devotees. This was originally a month'
            ' dedicated to paying respect to the ancient Nat spirits, before Theravada Buddhism became prevalent in Burma.'
        'After dark the pagoda is wonderfully illuminated by spotlights that give the place a mystical atmosphere.'
            ' The Shwezigon was damaged by several earthquakes including the large 1975 quake, but has been restored since.',


          //Info2
          'The Shwezigon Pagoda was built by King Anawrahta who founded the Bagan Kingdom in 1044. '
  'After a monk from the Thaton Kingdom had converted the King to Theravada Buddhism the campaign of massive'
  ' temple building began on the plains of Bagan. King Anawrahta built the pagoda to enshrine several Buddha relics,'
  ' including a copy of the sacred tooth relic of Kandy in Sri Lanka. According to legend, the spot where the pagoda'
  ' was to be built was chosen by a white elephant carrying the relic on his back. Construction started around 1059, '
  'the pagoda was completed at the end of the 11th century during the reign of King Kyanzittha. The pagoda sits in the '
  'center of a large platform, around which several other shrines and pagodas have been built. The bell shaped stupa that '
  'is completely gilded sits on a square base, of which the sides are about 49 meters long. At the base of the pagoda sits'
  ' a large golden lion at each of its corners. On top of the base are three receding terraces. The third one has a small'
  ' stupa on each of its four corners. The solid and completely symmetrical stupa on top of the terraces is almost 49 meters'
  ' high. On top of the pagoda is a hti, a spire ornament shaped as an umbrella, that is found on almost every Burmese temple. '
              'All four sides of the pagoda have a central stairway guarded by Makaras (sea creatures from Hindu mythology) leading '
              'to the top of the terraces. The three terraces contain beautiful glazed terra-cotta plaques depicting scenes from '
              'the 547 Jataka tales, the stories about the previous lives of the Buddha. Before Buddhism was introduced to Bagan,'
              ' Nat spirit worshipping was prevalent. King Anawrahta allowed the images of the 37 most highly venerated Nats '
              'to be put on the lower terraces of the Shwezigon Pagoda. The Nat images have since been moved and can now be '
              'found inside a small hall next to the platform. Nat worshipping is still very much alive in current day Burma,'
              ' the Mount Popa close to Bagan is known as the home of the Nats. Along all four sides of the pagoda opposite the '
              'stairway to the third terrace is a pavilion that contains a large standing Buddha image from the 12th century.'
              ' Two pillars with texts inscribed in Mon language from the end of the 11 century tell the early history of the'
              ' Shwezigon Pagoda.',


          //Info 3
          'The Shwezigon complex is surrounded by a wall measuring 230 meters on each side with an access gate in all of its'
              ' four sides. At the main entrance gate is an enormous white mythological lion standing guard. A long covered '
              'walkway with vendors leads to the pagoda. During the centuries following the construction of the pagoda '
              'several other structures have been added to the temple complex. Around the platform are several Tazaungs,'
              ' a Burmese style open pavilion. A number of temple buildings are topped with a Pyatthat, an intricately decorated'
              ' Burmese roof made of several receding layers. Several structures are topped with a Sikhara, a tower like '
              'structure originating from North India. Unlike the Sikhara of the Ananda temple that is one of Bagan’s best '
              'known landmarks, these Sikharas are not gilded. The complex also contains a small whitewashed pagoda and '
              'several structures where Buddha images are enshrined.'
      ),

    //2 : Dhammayangyi Temple
    Place(
        'Dhammayangyi Temple',
        'assets/dhammayangyi.jpeg',
        '4.6',

        'Narathu',
        '1170',

        //Info - (1)
        'The Dhammayangyi is the largest temple on the plains of Bagan. From a distance it resembles the early step pyramids of Egypt.'
            'The enormous structure that was never completed consists of a massive square base topped by six receding terraces.'
            ' The Dhammayangyi temple was build by King Narathu in 1170. Narathu became King of Bagan after murdering his father'
            ' and his brother, who was next in line to become King. Narathu was probably worried about bad karma and build to'
            ' massive temple to gain merit and to compensate for murdering his father and brother.The King was later murdered '
            'himself. There are several stories going around about the death of Narathu. One storey goes that the King was'
            ' murdered by a group of Indians sent by the King of Pateikkaya. The murder was in revenge for the killing of'
            ' one of Narathu’s wives, who was a Princess of Pateikkaya. Another is that Narathu was killed by invaders from Sri Lanka.',

        //Info - (2)

        'The Dhammayangyi temple was never fully completed. Construction was probably halted right after the death of the King. '
            'Much of the temple’s interior was filled with construction debris, including three of the four sanctums in the inner core'
            ' and and most of the two corridors that run around the temple’s central core. It is possible that the temple’s interior'
            ' was intentionally filled with debris by resentful workers because of Narathu’s very harsh rule or possibly to prevent '
            'the ghost of King Narathu from leaving the temple. The brick work of the Dhammayangyi was done with great precision. '
            'The storey goes that King Narathu had the laborers killed or their hands chopped off if the work was not done perfectly.',

        //Info - (3)
        'The sides at the base of the structure are almost 78 meters long, while the central core of the temple measures '
            '25 meters long. There are four entrances that each contain a seated Buddha image on a pedestal, the main entrance'
            ' is the Eastern one. The Western sanctum contains images of the Gautama Buddha and the future Maitreya Buddha,'
            ' side by side. The sikhara, a tower like structure originating from North India, that was once on top of the'
            ' Dhammayangyi has collapsed. The temple grounds are surrounded by a wall with huge arched gates that lead to '
            'the pagoda. To prevent further deterioration the terraces of the temple are closed to the public.'
    ),

    //3 : Archeological Museum
    Place(
        'Archeological Museum',
        'assets/museum.jpeg',
        '4.3',

        'N/A',
        '1904',

        //Info : 1
        'The Bagan Archaeological Museum was opened on 17th April 1998 in the world renowned ancient '
            'city Bagan, in Mandalay Division, Upper Myanmar. It is situated near the Gawdawt Palin Pagoda.'
            ' The first archaeology museum in the true sense of the term was built near the northern covered'
            ' cause way of Ananda Temple in 1904, in a very modest way. A small oblong one storey brick '
            'building of 60 feet by 30 feet in which some ancient stone inscriptions, Buddha images and '
            'other cultural objects collected from the Bagan area were haphazardly displayed. After some '
            'years as a large number of new art objects and antiquities were added, the museum looked like '
            'an overstocked storehouse.',

        //Info : 2
        'In 1976 the site to the south of Gawdawt Palin Pagoda was selected and designated for Archaeological '
            'Museum Compound in which an octagonal shaped museum building was constructed. In it were displayed'
            ' very rare and fragile artifacts excavated from ruined Bagan monuments. Three big oblong sheds were '
            'built near it as annexure under which stone inscriptions and stone statues of the Bagan Period were '
            'displayed. It was called Archaeological Site Museum Bagan and was officially opened in October 1979. '
            'There are many display rooms. On the ground floor there is a fully decorated and air-con hall large '
            'enough to hold international conference, symposium, seminar or meeting. On this floor are the display '
            'room for objects of visual arts of the Bagan Period such as terra cotta, stucco works, wood carvings, '
            'stone sculptures, metal works, lacquer works, etc., the showroom exhibiting models of 55 different '
            'coiffeurs used by fashionable court ladies of the Bagan Period, the display room in which originals, '
            'replicas and ink copies of Bagan stone inscriptions and other forms of epigraphy, the gallery where '
            'paintings by famous Myanmar artists of to-day depicting the social life and military might of ancient '
            'Bagan, as well as copies of frescoes on walls and ceilings of ancient temples, and the display room in '
            'which models of Bagan monuments of architectural and artistic wonder.',

        //Info : 3
        'Going up to the second floor by grand marble floored stairways, we reach the display rooms on religious '
        'themes. Here we find that exhibits are Buddha statues and images of various makes, postures, and styles providing '
        'us some knowledge of Buddhist iconography. In the room of Buddhist Art are displayed objects of all visual Buddhist '
        'arts. Viewers of these objects may well appreciate the depth and extent of Buddhist influence upon Myanmar culture. '
        'Here on the second floor is another art gallery, but it specialises in religious themes. Paintings by artists of '
        'to-day and murals by master painters of Bagan’s time on display in the gallery all represent Bagan pagodas and '
        'monuments or depict Buddhist stories - jatakas. Next above the second floor is the flat roof of the whole building '
        'from where pilgrims, visitors and tourists can enjoy a panoramic view of the entire "pagoda land" of Bagan and '
        'patiently wait for the right moment to watch the "large orange coloured globe" gradually sinking behind the Tantkyi '
            'Taung hill range on the west bank of the mighty Ayeyawaddy River. To crown the pleasures of your visit to Bagan a big '
            'bronze statue awaits your attention in the centre of the round-about lawn in the front of the museum’s portico. '
            'The statue represents the hero king Pyusawhti (A.D.167-242), the third king in the Bagan dynasty of 55 kings. '
            'Legend has it that he conquered the five enemies who had been molesting Bagan by slaying them with his mighty '
            'bow and arrows. The enemies were the big bird, the big boar, the big tiger, the big flying squirrel and the wild '
            'weed bu (gourd). The Bupaya Pagoda standing on the brink of the Ayeyawaddy River at Bagan is attributed to Pyusawhti. '
            'It stands on the site where the hero king finally eradicated the troublesome weed. Visitors to Bagan have now two grand '
            'museums. The entire area of 16 square miles of Bagan Archaeological Zone itself is a field museum of nearly ten '
            'centuries old and a splendid modern museum of very recent time.'
    ),

    //4 - Ananda Temple
    Place(
        'Ananda Temple',
        'assets/ananda_temple_bagan.jpeg',
        '4.7',

        'Kyanzittha',
        '1090 - 1105',


        //Info 1
        '\t\t\t\tAnanda was built in 1105, although it has been badly damaged but now has been '
            'restored to serve tourists. The feature that differs Ananda to the rest of the temples'
            ' is the gold-plated tower. In the middle of the plain of Bagan, the top of Ananda tower'
            ' can be seen extremely prominent and unique. According to legend, the story of Ananda'
            ' Temple is associated with 8 monks from India. Once, the monks went to see King Kyanzittha'
            ' and told him the temple in the Himalayas they were practicing. After being impressed with '
            'the monks story, the King immediately built a temple of similar structure in Bagan.'
            ' It took 15 years for the temple to be completed.',

        //Info 2
        'Ananda has a very symmetrical structure with a Greek diagonal layout, which makes'
            ' it one of Bagan\'s most beautiful and sacred temples. Tourists will easily realize'
            'that the temple also has some Indian influence. A long corridor but simple, not too picky like any'
            'other places with a central square of 53m. The pathways create a perfect entrance, the stairs are'
            ' decorated with 554 ceramic tiles, on which the story of the Buddha is told,'
            ' which will not make visitors bored while discovering the temple. Ananda is'
            ' about 51m high and is the best restored ancient temple in Bagan. Inside Ananda'
            ' Temple are four Buddha statues of nearly 10 meters height, have reached the Nirvana'
            ' realm, each face in a different direction: Buddha Kassapa (south), Buddha Kakusandha '
            '(north), Buddha Konagamana (east) and Buddha Gautama (west direction). Stone sculptures'
            ' and frescoes on the walls are also very outstanding. It is considered a famous wonder'
            ' of architecture and is also one of four certain temples to come in Bagan along with '
            'Shwezigon temple, Dhammayangyi temple and Shwesandaw temple. In the evening, the temple'
            ' is lit with colorful lights to create an enchanting atmosphere, promising tourists '
            'countless of magical photos.',


        //Info 3
        'Just like other temples in Bagan, tourists must leave all footwear outside and only barefoot inside.'
            ' Skirts or shorts are not recommended as they may be refused entry to the temple. '
            'The best time to visit Ananda is from October to February every year because of the cool air,'
            ' low rainfall, which is also suitable for a hot air balloon ride. Visitors can also join '
            'the festival of Ananda Temple, which falls on Pyatho\'s full moon (between December and'
            ' January according to the lunar calendar), attracting thousands of locals. Up to'
            ' a thousand monks read the Sutra from day to night during the three- day festival, '
            'which is a really nice experience for you to deeply understand the culture of Buddhism '
            'in general and Myanmar in particular. Temple\’s tour and transportation are available'
            ' upon request at every hotel.'
    ),

    //5 - Thatbyinnyu Phaya
    Place(
        'Thatbyinnyu Phaya',
        'assets/Thatbyinnyu-Pagoda-Bagan-Myanmar1.jpeg',
        '4.6',

        'Alaungsithu',
        '1144',

        //Info : 1
        'With a height of just over 60 meters, the Thatbyinnyu Pagoda is one of the highest monuments of Bagan. '
        'The majestic pagoda, towering above other nearby temples and pagodas is visible from much of the Bagan plains.'
            'After the single storey pagodas built during the early period like the Shwezigon pagoda, the Thatbyinnyu is'
            ' one of the first two storey structures built in Bagan. After the Thatbyinnyu, Bagan architectural style '
            'evolved further with the Sulamani (1183), the Gawdawpalin (early 13th century) and the Htilominlo temple (1211),'
            ' that are all multi storey temples. The square base of the Thatbyinnyu temple is about 58 meters long '
            'on each side. The brick structure coated with stucco is set on a low platform. On top of both the first'
            ' and second storey are three receding terraces. Each terrace has a small stupa on each of its four corners.',

        //Info : 2
        'Many of the large Bagan temples like the Ananda and the Sulamani have a set of glazed terracotta plaques with'
            ' depictions form the Jataka tales on the base and terraces. Although the indentations for more than 500 plaques'
            ' are present encircling the terraces of the Thatbyinnyu temple, the Jataka plaques are missing for some reason. '
            'On top of the massive base is a smaller cube shaped structure where the principal Buddha image is enshrined in '
            'a cella, a cubic space surrounded by a corridor. The top of the pagoda is formed by a sikhara tower, which '
            'is shorter and more compact than that of the Ananda temple and not gilded. On top of the sikhara is a gilded'
            ' hti, a spire ornament found in most Burmese temples shaped in the form of an umbrella. All four sides have'
            ' an arched entrance hall protruding from the main building. The portico on the East side, which is the main'
            ' entrance is longer than the other three, which breaks the symmetry of the temple. The corridors enshrine a'
            ' large number of seated Buddha images seated in pedestals in receding arches in the walls. A few statues of Nat '
            'spirits who were worshipped in Burma before the arrival of Buddhism can also be found in the temple. The temple'
            ' was badly damaged during the 1975 earthquake and has been renovated a few years later. The terraces of the'
            ' Thatbyinnyu are closed to the public to prevent further erosion to the structure.',

        //Info : 3
        'Near the Thatbyinnyu is a small temple, called the tally pagoda. Apparently, during construction of the large'
            ' Thatbyinnyu, one brick was laid aside for every 10,000 bricks used to keep count of the number of bricks'
            ' used. The tally pagoda was constructed after completion of the Thatbyinnyu with the bricks that were laid aside. '
            'On the grounds of a monastery next to the Thatbyinnyu are two stone supports that used to hold an enormous bronze'
            ' bell donated by the builder of the temple, King Alaungsithu.'
    ),

    //6 - Sulamani Temple
    Place(
        'Sulamani Temple',
        'assets/sulamani-temple.jpeg',
        '4.8',

        'Narapatisithu',
        '1183',

        //Info : 1
        'The Sulamani is a large, very elegant multi storey structure from the late Bagan period.'
            ' The temple was built during the reign of King Narapatisithu, a very prosperous time '
            'in Bagan. During his long reign several of Bagan’s most impressive monuments were built,'
            ' such as the Dhammayazika and the Gawdawpalin temple. An inscribed stone in the North '
            'porch of the temple tells that King Narapatisithu found a small ruby at the spot where '
            'the Sulamani temple was later erected, hence the name of the temple, which means small ruby. ',

        //Info : 2
        'The architectural style has many similarities with that of the Htilominlo temple, which was'
            ' built a few decades later. The Sulamani is a two storey structure with a square layout.'
            ' The large first floor is topped with three receding terraces. The upper floor which is'
            ' much smaller is topped with another four receding terraces. The corners of both lower and'
            ' upper terraces contain smaller spires.The top of the Sulamani comprises of a sikhara, a tower'
            ' structure originating from North India. Unlike the one of the Ananda temple, the sikhara is not'
            ' gilded. On top of that is the hti, a spire ornament shaped like an umbrella. The temple has '
            'entrance porches on all four sides. The Eastern porch which is the main entrance protrudes'
            ' further out from the structure than the others. Apart from this, the structure is symmetrical.',

        //Info : 3
        'The Sulamani’s base and terraces contain beautiful glazed terracotta plaques with depictions of '
            'Jataka tales, the stories about the previous lives of the Buddha. It was customary for the most'
            ' important and largest temples in Bagan to have a set of plaques with Jataka tales, of which'
            ' there are 547 in total, in order to educate the people about Buddhism. The pediments over the '
            'entrance doors and windows show finely carved stucco decorations. The ground floor contains Buddha'
            ' images on each of its four sides. The corridor surrounding the lower cube contains frescoes and '
            'murals from various eras. They depict scenes from the life of the Buddha as well as various'
            ' mythological animals like Naga snakes and Makara sea creatures. The niches in the wall of the '
            'corridors surrounding the cubes of the lower and upper floor contain seated Buddha images placed '
            'on pedestals. The temple complex originally housed a number of other buildings like an ordination'
            ' hall, a library where the Buddhist scriptures were kept and monks living quarters. The remains '
            'of the Sulamani Kyaung, the monastery building are still visible within the walled area. The grounds'
            ' are encircled by a wall with a large arched gateway topped with a small circular stupa on each side.'
    ),

    //7 - Bu Phaya
    Place(
        'Bu Phaya',
        'assets/buphaya-paya.jpeg',
        '4.5',

        'Pyusawhti',
        '300',

        //Info 1
        'Although not one of Bagan’s most impressive monuments, the Bupaya pagoda is an attractive'
            ' monument because of its age and its location on the banks of the Irrawaddy river.'
            ' The gilded pagoda is built in Pyu style, which is a descendant from the Indian style stupa. '
            'The Bupaya Pagoda is one of the earliest monuments on the Bagan plains, although it is not '
            'known with certainty when exactly it was build. According to a sign at the entrance the pagoda'
            ' dates back to the year 300. Judging from the style of the pagoda, it seems likely that it dates'
            ' from the 9th century, when the city of Bagan was founded or the 11th century, when the '
            'city walls were build.',

        //Info 2
        'The Bupaya pagoda is believed to be build by King Pyusawhti, who ruled Bagan during the end '
            'of the 3rd century. According to local legend Pyusawhti, before he was King, managed to'
            ' free the Bagan Kingdom of five nuisances, one of which was the infestation of the Irrawaddy'
            ' river banks by the bu, a kind of gourd plant. As a reward he was given the hand of the '
            'King’s daughter. It is said that when Pyusawhti became King, he build the pagoda at '
            'the spot where the bu plant was eradicated. Buddhist relics were enshrined in the pagoda.'
            ' With bu meaning gourd and phaya meaning pagoda, Bupaya Pahto literally means pagoda '
            'shaped like a gourd. The structure is in the shape of a bulbous dome and somewhat '
            'resembles the fruit of a gourd plant. The cylindrical stupa sits on top of a number '
            'of terraces, that looks like a fortress like structure when viewed from the river.'
            ' On top is a gilded hti, a finial shaped as an umbrella found on almost all Burmese temples.',

        //Info 3
        'During the 1975 earthquake the original brick structure broke up and fell into the river.'
            ' The pagoda standing today is a reconstruction of the original. Whereas the original was '
            'made of brick, the new one is a concrete structure and has been completely gilded. The temple'
            ' grounds entrance is guarded by two white and gold Chinthes, Burmese mythological lions. '
            'On the grounds are also a number of very ornate pavilions. The busy area around the temple '
            'is full of market stalls, ox carts and taxis. On the river banks are boats that can be '
            'chartered for a cruise along the Irrawaddy river.'
    ),

    //8 - Bagan Golden Palace
    Place(
        'Bagan Golden Palace',
        'assets/bagan-golden-palace.jpeg',
        '4.3',

        ' N/A ',
        ' N/A ',

        'Bagan Golden Palace (Nan Taw Yar) is situated near the Tharabar Gate which is the main entrance of '
            'the Bagan old city. According to the excavation findings and evidences, the reconstruction of '
            'the Bagan Golden Palace was started in August 2003 and completed in November 2007, under the '
            'supervision and guidance of Ministry of Culture. Bagan Golden Palace was inaugurated on 2nd January'
            ' 2008. There are eight buildings on the palace platform.',

        '',
        ''
    ),

    //9 - Shwesandaw Pagoda
    Place(
        'Shwesandaw Pagoda',
        'assets/shwesandaw_pagoda.jpeg',
        '4.7',

        'Anawrahta',
        '1057',

        //Info - 1
        'The Shwesandaw pagoda is one of the taller pagodas in Bagan, an imposing structure visible'
            ' from far away rising from the plains of Bagan with its height of 328 feet.'
            'The Shwesandaw was built in 1057 by King Anawrahta, founder of the Bagan Kingdom. '
            'Anawrahta wanted to further Buddhism in his empire. To this end he requested Manuha, '
            'King of the Mon Kingdom of Thaton, to be given a copy of the Tripitaka, the Buddhist teachings. '
            'In 1057, after Manuha’s refusal, Anawrahta invaded Thaton. Upon is return after the '
            'successful conquest, he had the Shwesandaw pagoda built to enshrine hair relics of the'
            ' Buddha, which he had brought back from Thaton.',

        //Info - 2
        'The Shwesandaw is a white painted symmetrical structure consisting of a bell shaped stupa'
            ' set on a base of five square receding terraces. The stupa is topped with a golden multi'
            ' tiered hti, an ornamental spire in the shape of a ceremonial umbrella found on many'
            ' Burmese temples. The hti is not the original which came down with the 1975 earthquake. '
            'The original one is on display next to the pagoda. The corners of the pagoda’s five terraces'
            ' were adorned with statues of Ganesha, the Hindu God with the elephant head, in Burma known'
            ' as Maha Peinne. Therefore, the pagoda is locally also known as the Ganesh pagoda or Maha '
            'Peinne pagoda. Several Hindu deities like Ganesha were worshipped in Bagan before '
            'the arrival of Buddhism. On the five terraces there used to be hundreds of terra-cotta '
            'plaques with depictions from several Jataka tales, the stories about the previous lives'
            ' of the Buddha. Unfortunately, nothing is left today. Narrow, steep flights of steps on '
            'all four sides of the receding terraces lead to the base of the stupa, from where visitors'
            ' have good views of the plains of Bagan and its numerous temples. The pagoda is also a well'
            ' known spot for sunset and sunrise viewing. Dozens of bronze and stone Buddha images found '
            'at the pagoda during restoration works are on display in the Bagan Archaeological Museum.',

        //Info - 3
        'Next to the Shwesandaw paya is the Shinbinthalyaung temple. The rectangular building with several '
            'entrances and small windows enshrines a reclining Buddha image. The brick and plastered image'
            ' measuring 70 feet long is believed to date back to the 11th century. The buildings walls contain ancient murals.'
    ),

    //10 - Bagan Nan Myint Tower
    Place(
        'Bagan Nan Myint Tower',
        'assets/bagan_nan_myint tower.jpeg',
        '4.2',

        ' N/A ',
        ' N/A ',

        'Nan Myint Tower also known as the Bagan Viewing Tower is located within the Aureum Palace Hotel & Resort,'
            ' Bagan. The magical inspiration of Bagan is all about its ancient civilization. Opened in April 2005,'
            ' Nan Myint Tower is the ideal viewpoint for visitors to Bagan, one can enjoy a unique panoramic '
            'view of the ancient kingdoms, it is a vision of rare exotic beauty, a vision of a legendary past, '
            'a vision of a great king. Towering at a height of 60 metres, the viewing rooms are from the 11 '
            'to 13 levels, the view from above is unlike anything you have ever seen. Once you have been '
            'greeted by our staff, the concerns of the real world will be far away, sit back, relax and let '
            'the sights take you many centuries back.',

        '',
        ''
    ),

    //11 : Tant Kyi Taung Pagoda
    Place(
        'Tant Kyi Taung Pagoda',
        'assets/tant_kyi_taung_pagoda.jpeg',
        '4.9',

        'Anawrahta',
        'A.D 1059',

        //Info : 1
        'A Pagoda with an incredible view, that’s Tuyin Taung Pagoda or Tant Kyi Taung Pagoda for you! '
            'On your way to Mt Popa, you can break your road trip and enjoy some relaxed moments here. '
            'This one is situated at the top of a hill and hence the view it offers is just fascinating. '
            'When the sun is about to set and the sky turns orange, this is the best time when you can '
            'enjoy Tuyin Taung Pagoda beauty in the truest manner! Also, carrying a camera is must!',

        //Info : 2
        'Tantkyitaung Pagoda located across the Ayeyarwady River in Pakokku District, Magway Division, '
  'Myanmar (Burma) is a prominent Burmese Buddhist pagoda near the historic city of Bagan, believed to enshrine'
  ' four tooth relics of Gautama Buddha. It was built by King Anawrahta in 397 ME on Tantkyi Hill, where the'
  ' royal white elephant bearing the tooth relics rested for the second time, after it sat at a place, market'
  ' by Shin Myethna Thettawshay Pagoda, then at a place where heavy rains fell, market by Shin Mogaung Pagoda,'
  ' and at a place where the elephant mustered its strength, market by Sin Min Thwin Pagoda. Tantkyitaung '
            'Pagoda is 90 feet (27 m) high with the base of 60 feet (18 m). Its nine tiers of umbrella contains'
            ' a silver vane and the diamond bud. It has been renovated in successive periods. It has an image '
            'of Buddha, a statue of Ananda and that of the forest guardian. A look down from the pagoda platform'
            ' reveals the head of a dragon protruding from the walling down below. It is said that the tail end '
            'of this likeness of the dragon is around the site of Shwezigon Pagoda.',

        //Info : 3
        ''
    ),

    //12 : Thambula Temple
    Place(
        'Thambula Temple',
        'assets/thambula.jpeg',
        '4.1',

        'Queen Thembula',
        'Completed 1255',

        //Info 1
        'This single story temple was built by Queen Thembula in the 13th century and stands apart from many'
            ' of the other single story temples by being beautifully well lit, and featuring Chinese influences '
            'among the murals and Buddhas adorning the Temple. The use of the color yellow as well as the features'
            ' of the people in the murals make Thambula Temple stand out, and make it an excellent stop that won’t'
            ' be overcrowded by visitors.',

        //Info2
        'Thambula is the name most commonly used for this temple but its true name in Bamar is Thonlu La, '
            'derived from the original Pali name Tiloka Canda Devi, Moon of the Three Worlds. The name Thonlu La'
            ' is written on the stone inscription found within the temple.',

        //Info 3
        'Being one of the interesting destinations to visit on Bagan tours, it captures tourist’s attention a'
            ' beautiful structure, square in plan, and set on a plinth. The stucco details are delicate and '
            'elegant. The interior walls are painted with murals, and one shows a winged Keinara bird-man '
            'with human feet instead of birds’ claws, as is more usual.'
    ),

    //13 : Mt. Popa
    Place(
        'Mt. Popa',
        'assets/popa.jpeg',
        '4.3',

        ' N/A ',
        ' N/A ',

        //Info : 1
        'Mount Popa is an extinct volcano on the slopes of which can be found the sacred Popa Taungkalat'
        ' monastery, perched dramatically atop a huge rocky outcrop. The monastery is entirely surrounded by '
        'sheer cliff faces and offers stunning views of the surrounding plains and Mount Popa itself.',

        //Info : 2
        'The monastery at Taungkalat (meaning ‘Pedestal Hill’) is famed for being home to 37 nats '
        '(Burmese spirits), which are represented by statues at the base of the volcanic outcrop. From here, '
        'you can climb up the 777 steps to the monastery at the top, where you will find a 360 degree panorama '
        'and a labyrinth of shrines to explore. But beware the macaques! These little locals may look curious and '
        'friendly from a distance, but given half a chance they will steal anything they can get their hands on: '
        'food, purse or camera! There are a number of teahouses and beer stations at the base of Popa Taungkalat, '
        'serving drinks and simple Myanmar dishes. The Mount Popa Nat Festival takes place in March and celebrates'
            ' two brothers who were reincarnated as nats (spirits); for dates and full Myanmar festival listings,'
            ' go to our festivals calendar. For a wider selection of photos from Popa Taungkalat and Mount Popa,'
            ' go to our Flickr photo set.',

        //Info : 3
        'The monastery is frequently confused with the much larger Mount Popa, which looms over it and is sometimes'
        ' called Taung Ma Gyi (Burmese for ‘Mother Hill’). If you have the time and the conditions are right, then'
        ' climbing Mount Popa is well worth the effort; the plunging valleys around the peak are dramatic, and on '
        'a clear day you can witness views stretching vast distances; as far as Bagan and the Irrawaddy River,'
        ' and sometimes beyond. On your way up, you will also find the best views of the Popa Taungkalat Monastery,'
        ' as well as an impressive array of flora and fauna, including many different species of birds and butterflies'
        ' in a striking array of colours and sizes. Some scrambling needs to be done in the steep final section towards'
            ' the 1,518 metre summit, but for the most part it is a straightforward hike of 3-4 hours (one way).'
            ' Make sure to pack plenty of drinks and snacks, however: apart from the luxurious Popa Mountain '
            'Resort (which can be found near the beginning of the climb) there is no food or drink available '
            'at any point on the ascent, and temperature and humidity levels can get very high. You can start '
            'your journey from a number of different places, but the main reference point is the Popa Mountain '
            'Resort turning off point approximately 1.5km from Popa Taungkalat on the Popa Taungkalat to Kyauk '
            'Padaung road (the turning off point is clearly signposted in English).'
    ),

    //14 - Htilominlo Pahto
    Place(
        'Htilominlo Pahto',
        'assets/htilominlo.jpeg',
        '4.5',

        'Htilominlo',
        '1218',

        //Info - 1
        'The Htilominlo temple is a large majestic structure towering 46 meters high. Its design is similar '
            'to that of the Sulamani, which was build about three decades earlier by the previous King. The '
            'monument is named after its builder, King Htilominlo who was also known as Zeya Theinkha and '
            'Nadaungmyar. According to legend, Htilominlo was chosen to be the next King out of the five '
            'sons of King Narapatisithu. The five sons stood in a circle with a white umbrella in the center.'
            ' When the umbrella would tilt and point towards one of the sons, that son was to be the next King.'
            ' As the umbrella pointed towards Htilominlo, he was chosen. It is said that the Htilominlo pagoda '
            'was built on the spot where he was selected as the next King. The Htilominlo is a brick structure, '
            'that was originally plastered with white stucco, some of which is still in place. The intricately '
            'carved stucco contains depictions of ogresses and mythological animals like Makara sea creatures. '
            'The temple is set on a low platform and has a symmetrical floor plan, but for the Eastern entrance '
            'porch that extends further out than the other three. The massive lower cube is topped with three '
            'receding terraces. The much smaller second cube has another three terraces. All of them contain small '
            'stupas on each of its corners. The terraces are fitted with a set of glazed terracotta plaques with scenes '
            'from the Jataka tales, the stories about the previous lives of the Buddha. Unfortunately, many of the tiles'
            ' have not survived. Each side of the square temple has an entrance porch, that are all richly decorated. '
            'The porch of the Eastern gate extends out further from the structure than the other entrances, which breaks '
            'the symmetry of the building.',

        //Info - 2
        'The top of the Htilominlo temple comprises of a sikhara, an ornamental tower originating from Northern India.'
            ' The sikhara is similar to that of the Ananda, except that it is not gilded. A gilded hti, a spire shaped '
            'like an umbrella is placed on the sikhara.',

        //Info - 3
        'The walls from the entrances leading to the inner sanctuary contain arched recesses in which small Buddha images'
            ' are enshrined. Both floors contain four large gilded Buddha images, each facing one side of the temple. The'
            ' second floor has been closed to visitors. The temple contains beautiful murals and frescoes of Buddhist '
            'depictions done in several colors. Some of them have faded considerably. To protect the temple from decay, the'
            ' terraces are closed and it is no longer possible to climb to the top. Around the temple are lots of souvenir'
            ' stalls selling local handicrafts. The complex is surrounded by a wall with elaborate entrance gates. The '
            'Htilominlo temple was damaged during the 1975 earthquake, and has since been restored.'

    ),

    //15 - Gu Byauk Gyi
    Place(
        'Gu Byauk Gyi',
        'assets/gu_byauk_gyi.jpeg',
        '4.2',

        'Kyanzittha',
        'Early 12th century',

        //Info 1
        'The Gubyaukgyi temple near Wetkyi-in village North East of old Bagan was built'
            ' by King Kyanzittha in the early 12th century. During his reign the empire saw prosperity'
            ' and the construction of grand temples like the Ananda and the Myazedi pagoda. The Gubyaukgyi’s'
            ' architecture shows Indian influence, particularly the spire which resembles that of another'
            ' temple in Bagan, the Mahabodhi. Both are based on the Mahabodhi temple of Bodh Gaya in India,'
            ' the place where the Buddha reached enlightenment some 2,500 years ago. The Gubyaukgyi is a '
            'cave temple; the first syllable of the temple’s name (“gu”) translates to “cave”.'
            ' The interior walls and ceilings are decorated with fragments of ancient mural '
            'paintings that depict scenes from the Jataka tales, the stories that tell about'
            ' the previous lives of the Buddha.',

        //Info 2
        'The temple is oriented towards the East, where an antechamber containing the entrance '
            'protrudes from the structure. On the other three sides are false entrances in which'
            ' large stone perforated windows are fitted. The exterior walls were plastered with '
            'stucco. Some of the fine stucco decoration is still intact, especially on the Eastern'
            ' wall and the main entrance porch. The Gubyaukgyi temple is topped with a spire. Unlike '
            'those of most temples and pagodas in Bagan its design is not bell shaped or cylindrical; '
            'its four sides are straight and diminishing in size towards the top.',

        //Info 3
        'The temple’s interior is lit by daylight that comes in through large perforated stone windows.'
            ' The first room from the Eastern entrance contains a large Buddha image seated on a high '
            'pedestal. The brick, plastered image is in the “Calling the Earth to witness” posture. '
            'The wall behind the image and the ceiling above contain well preserved murals with '
            'Buddhist depictions. The other rooms contain smaller images of the Buddha. On the North '
            'and South wall of the Gubyaukgyi are murals depicting the 28 Buddhas mentioned in the Tripitaka, '
            'the ancient Buddhist manuscripts that contain the teachings of the Buddha. Photography inside '
            'the temple is not allowed, as the flash light would damage the ancient murals.'
    ),

    //16 - Myazedi pagoda
    Place(
        'Myazedi pagoda',
        'assets/Myazedi.jpeg',
        '4.1',

        'Prince Yazakumar, son of King Kyanzittha',
        'First half of the 12th century',

        //Info : 1
        'The Myazedi pagoda is a gilded stupa sitting on a number of square receding tiers, located in'
            ' Myinkaba village South of old Bagan. The Myazedi was built during the first half of the 12th '
            'century by Prince Yazakumar to make merit and to serve as a memorial to his mother. The name of '
            'the paya translates to “Jade Pagoda”. The famous Myazedi stone inscription that was discovered '
            'here is one display in a small building next to the pagoda.',


        //Info : 2
        'Flanking the stairs leading to the temple grounds are two large Chinthes, mythological lions often found'
            ' guarding Burmese temples. The Myazedi pagoda and several other temple buildings stand on a large '
            'platform. The Myazedi’s large gilded stupa is topped with a multi tiered ornamental spire called hti. '
            'The stupa sits on a number of square receding tiers. The first tier’s outer wall contains small ornamental'
            ' niches topped with a golden hti spire in which are enshrined small images of the Buddha. The corners of '
            'the first and third tier are adorned with small ornamental spires, the second tiers’ corners contain lion '
            'statues. Right behind the pagoda are two more structures, a bell shaped stupa on a square base and a small '
            'temple structure topped with several hti’s.',

        //Info : 3
        'A small building next to the pagoda contains the famous Myazedi inscription, the oldest stone inscription in'
            ' Burma, inscribed in 1113 by Yazakumar, son of King Kyanzittha and builder of the Myazedi. Prince Yazakumar'
            ' dedicated the stone inscription to his father. A large four sided stone is inscribed in four languages,'
            ' ancient Pali, Mon, old Burmese and Pyu. Each side contains the same text in a different language, which'
            ' allowed archaeologists to decipher the previously unknown Pyu language. The Pyu inscription also shows'
            ' the influence of the Pyu, the earliest inhabitants of upper Burma, in early Bagan history. The stone '
            'inscription tells the storey of the Prince and his father. Yazakumar was the only son of King Kyanzittha '
            'and would therefore be in line to be the next King of Bagan. The King however, who was unaware of the fact '
            'that he had a son because he had left his pregnant wife, had already chosen Alaungsithu to be his successor'
            ' to the throne. He therefore appointed Yazakumar governor of Arakan, an area on the Bay of Bengal.'
    ),

    //17 - 'Manuha Temple'
    Place(
        'Manuha Temple',
        'assets/manuha_temple.jpeg',
        '4.5',

        'Manuha (King of Thaton during the reign of Anawrahta)',
        '1067',

        //Info : 1
        'The Manuha temple is one of the oldest temples of Bagan. It is named after Manuha, King of a Mon '
            'Kingdom named Thaton located in lower Burma. Manuha built the temple in 1067, after having spend '
            'a decade in captivity in Bagan. The temple enshrines four large gold painted images of the Buddha,'
            ' each contained within a separate room, barely large enough to accommodate the images. The front '
            'of the temple consists of three rooms, each containing a seated image. The central image measuring '
            '46 feet high is in the “Calling the Earth to witness” posture. It is flanked by two smaller images '
            'each 33 feet high. The back of the building consists of a single room, that contains a 90 feet long '
            'reclining Buddha image wearing a serene facial expression. To this day, the Manuha temple is an '
            'active place of worship for Burmese Buddhists. The Manuha temple is a rectangular, whitewashed building.'
            ' The top storey which is much smaller than the lower one is topped with a large multi tiered hti, a spire'
            ' shaped like a ceremonial umbrella. The edges of both first and second storey are adorned with several '
            'smaller hti’s. The building is oriented towards the East. At the center is a portico with the main '
            'entrance protruding out of the structure leading to the room that contains the largest sitting Buddha '
            'image. Two smaller entrances on either side of the portico lead to the rooms enshrining the smaller'
            ' images. A number of narrow steps and a narrow door lead towards the room of the reclining Buddha in '
            'the back of the structure. Near the back is a stairway to the top of the temple; a window allows a '
            'view of one of the huge seated images from above. During the 1975 earthquake part of the roof collapsed '
            'damaging the central image, which has been restored since.',

        //Info : 2
        'The stone inscription found at the temple tells the storey of the Manuha temple and the Buddha images enshrined'
            ' in it. Anawrahta, King of Bagan wanted to further Buddhism in his empire. He requested Manuha, King of the '
            'Mon Kingdom Thaton a copy of the Tripitaka, the Buddhist teachings. After Manuha refused, King Anawrahta '
            'invaded Thaton in 1057. King Manuha was captured, taken back to Bagan and imprisoned. Also captured were '
            'thousands of Mon artisans and craftsmen, that played an important role in the building of countless temples '
            'in Bagan during the next decades. After having spend 10 years in captivity, Manuha wanted to gain religious '
            'merit as he wanted to attain Nirvana. He also wished that during the cycle of rebirths (Samsara), he would '
            'never be conquered by enemies and had to live in captivity again. He therefore request Anawrahta permission'
            ' to build a temple. Since the captured King did not have the money to build a temple, he sold a precious jewel '
            'to a rich Myinkaba merchant for six cart loads of fine silver. The King used the silver to pay for the construction'
            ' of a large image of the Buddha, in which Buddhist relics were enshrined. Later he had three more images build. After'
            ' the completion of the four images, the temple was built around them. The rooms are barely large enough to contain the four '
            'images; It is believed that Manuha wanted to express his frustration about his captivity.',

        //Info : 3
        'A recent Burmese style building next to the temple contains statues of King Manuha and his Queen as well as an '
            'enormous alms bowl with a ladder in front of it. On a pole next to the temple rests a legendary Hamsa bird. A section of'
            ' a hall contains very colorful images of three of Burma’s most venerated Nats, Mai Wunna and her two sons, who live on '
            'Mount Popa, about 50 kilometers from Bagan. The Nats are ancient spirits that have been worshipped in Burma even before'
            ' the arrival of Buddhism. Near the temple is a small chedi topped with a hti.'
    ),

    //18 - Lawkananda pagoda
    Place(
        'Lawkananda pagoda',
        'assets/lawkananda-01.jpeg',
        '4.6',

        'Anawrahta',
        '1059',

        //Info : 1
        'The Lawkananda Paya is a beautiful golden pagoda on top of a small hill on the banks of the'
            ' Irrawaddy river. Its name translates to “Joy of the world” in ancient Pali language. The pagoda,'
            ' also known as the Loka Nanda pagoda was built in 1059 by King Anawrahta, founder of the Bagan '
            'empire. It enshrines a replica of a tooth relic of the Gautama Buddha, that the King obtained '
            'from Sri Lanka. The pagoda, located a few kilometers South of old Bagan marked the Southern boundary'
            ' of Bagan’s capital. The cylindrical pagoda somewhat resembles the much older Bupaya pagoda, '
            'located further North in old Bagan, which is more bell shaped. From the Loka Nanda’s platform'
            ' visitors have good views of the Irrawaddy river and the mountain range in the background.'
            ' At night the pagoda is lit up. Although an attractive place with the river breeze and serene '
            'atmosphere, the Lawkananda is a little visited Paya, mainly used by Burmese people as a place'
            ' of worship. In the middle of the rainy season late July, Early August depending on the lunar '
            'calender the Lawkananda pagoda festival is held to celebrate the rain in the very dry Bagan region.',

        //Info : 2
        'On the banks of the Irrawaddy river is a jetty, which during the days of the Bagan empire was used by '
            'large trading ships from far away places as the Mon Kingdom Thaton, Rakhine and India. The temple '
            'grounds are guarded by two large ferocious looking Chinthes (mythological lions), standing at the '
            'bottom of the stairways to the platform holding the Lawkananda. The pagoda’s dome is set on an octagonal'
            ' base of three receding tiers. The lower two tiers are fitted with steps on three sides. The cylindrical'
            ' dome is adorned with intricate flower motifs. The solid brick pagoda, which was previously white, has'
            ' recently been gilded. Its interior, which enshrines a Buddha tooth relic, is not accessible. The '
            'Lawkananda is topped with a hti, a finial in the shape of a multi tiered umbrella often found on Burmese'
            ' temples. The hti is adorned with jewels. On the platform next to the pagoda is a shed housing a large'
            ' wooden drum and statues of two men carrying a bell. A structure next to the pagoda houses a seated'
            ' Burmese style Buddha image.',

        //Info : 3
        'King Anawrahta had managed to acquire a Buddha tooth relic from the King of Sri Lanka. When the relic arrived '
            'by boat the King waded into the waters of the Irrawaddy river to welcome the relic. Initially the relic was'
            ' enshrined in the Royal Palace, until a pagoda to hold it was built. According to ancient chronicles, the tooth '
            'was then put in a shrine on the back of a white elephant, which was then set loose. Wherever the elephant would'
            ' stop and kneel down, the pagoda was to be build. The elephant stopped at the spot where currently the Shwezigon '
            'Pagoda stands. Miraculously a second tooth appeared, which was likewise put on top of an elephant, that this time '
            'stopped and kneeled down further South on the banks of the Irrawaddy river. At this spot the Lawkananda pagoda was '
            'built and the relic was enshrined within it.'
    ),

    //19 - Mahabodhi temple
    Place(
        'Mahabodhi temple',
        'assets/Mahabodhi-Bihar.jpeg',
        '4.4',

        'Htilominlo',
        'First half of the 13th century',

        //Info : 1
        'The Mahabodhi Pagoda within the city walls of old Bagan is a monument in a style that is unique '
            'to Bagan. The pagoda was build to resemble the Mahabodhi temple in Bodhgaya in North India, '
            'the place where the Buddha reached enlightenment some 25 centuries ago. The temple is a two '
            'storey structure about 43 meters high. The pagoda and its square base are stuccoed and contain '
            'depictions of several animals and Nat spirit figures. The base of the structure consists of a '
            'square block. On each of its four corners are smaller versions of the stupa. Both the base and '
            'tower contain numerous niches, in which 465 Buddha images in different postures are enshrined. '
            'On top of the base is a conical tower topped with a golden hti, an ornamental spire found most '
            'Burmese temples. Both the lower and upper storey of the Mahabodhi temple contain a large seated '
            'Buddha image. On the inner wall is an inscription that provides information about the donation '
            'of the land where the temple was build on. The Mahabodhi temple was damaged during the earthquake '
            'of 1975, but has been restored since then.',

        //Info : 2
        'Another structure in the Mahabodhi temple complex is the gem house called Ratana Gara which contained '
            'a beautifully decorated alter piece which was badly damaged during the 1975 earthquake. The alter '
            'piece is now on display in the Bagan archaeological museum. The grounds also contain a brick circular '
            'stupa set on a square base.',

        //Info : 3
        'Seven places near the Mahabodhi temple represent the seven weeks the Buddha spent after reaching enlightenment.'
            'The first week the Buddha sat under the Bodhi tree where he had reached enlightenment. The second week the '
            'Buddha spend looking in appreciation at the Bodhi tree that had sheltered him during meditation.'
            'The third week the Buddha created a golden bridge in the air in order to demonstrate he had reached '
            'enlightenment and spend a week walking up and down the bridge. The fourth week the Buddha created a jeweled'
            ' chamber and meditated inside it. This chamber is represented by the Ratana Gara gem house. The fifth week '
            'the Buddha spend meditating under a Banyan tree. Three beautiful girls, said to be the daughters of the demon '
            'Mara, danced in front of him in an unsuccessful attempt to stop the Buddha from meditating. The sixth week'
            ' the Buddha meditated under a Mucalinda tree. When it started to rain a large snake appeared that wrapped '
            'its body around the Buddha and put its hood over the Buddha’s head to keep Him warm and dry. After meditating'
            ' under a Rajayatana tree during the seventh week, two merchants appeared who offered the Buddha rice cakes and'
            ' honey. The Buddha told the merchants about the Dhamma, the Buddhist teachings. The merchants were said to become '
            'the first followers of the Buddha.'
    ),

    //20 - Mingalazedi pagoda
    Place(
        'Mingalazedi pagoda',
        'assets/mingalazedi_pagoda.jpeg',
        '4.1',

        'Narathihapati',
        '1277',

        //Info : 1
        'The Mingalazedi is the last of the large temples built in Bagan before the Mongol armies'
            ' led by Kublai Khan invaded the Kingdom, which led to the end of the Bagan empire.'
            ' The pagoda is a late period Bagan style, symmetrical structure about 40 meters high.'
            ' After the Mon influenced temples of the early period and the first multi storey structures'
            ' of the middle period, the Mingalazedi Pagoda marks the top of architectural skills of the '
            'Bagan builders and the end of Bagan style architectural development. On top of three rectangular '
            'receding terraces is a platform, on which a large bell shaped stupa with horizontal concentric'
            ' rings is placed. At the four corners of each terrace is a smaller stupa. At the center of '
            'all four sides are stairways that lead to the platform on top of the third terrace.',

        //Info : 2
        'The terraces contain a set of glazed terracotta plaques with depictions from the Jataka tales. '
            'These tales of which there are 547 tell the stories about the previous lives of the Buddha.'
            ' Unfortunately, the set of plaques is incomplete and some are badly weathered. The stairs '
            'to the platform on top of the third terrace have been closed to prevent further deterioration '
            'of the pagoda. On the grounds of the temple complex that is surrounded by a wall is a library '
            'building made of brick. In this building the Tripitaka, the Buddhist scriptures containing '
            'the teachings of the Buddha was kept. Most library buildings in those days were made of wood, '
            'and have been destroyed by fire. The 13th century lacquer ware items found in the Mingalazedi '
            'Pagoda are among the oldest in Bagan. The Mingalazedi Pagoda was damaged during the 1975 earthquake, '
            'but has been restored since.',

        //Info : 3
        ''
    ),

    //21 - Gawdawpalin Temple
    Place(
        'Gawdawpalin Temple',
        'assets/gawdawpalin-temple-bagan.jpeg',
        '4.5',

        'Narapatisithu',
        'Early 13th century',

        //Info 1
        'With a height of 55 meters the Gawdawpalin is the second tallest temple on the plains of Bagan. '
            'Construction of the Gawdawpalin temple started during the reign of King Narapatisithu, which'
            ' was a very prosperous time in the history of the Bagan empire. During his reign a number of'
            ' magnificent monuments was built, including the Gawdawpalin, the Dhammayazika, the Sulamani '
            'and a number of less known pagodas and temples. The temple was completed during the reign of '
            'his successor, King Htilominlo in the early 13th century.',

        //Info 2
        'The Gawdawpalin is a large two storey temple built in the style of the late Bagan period. It '
            'resembles the Thatbyinnyu temple, that was built half a century earlier in the year 1144. '
            'The structure is set on a low platform. The lower cube is surrounded by a corridor that contains'
            ' a seated Buddha image on a pedestal on each of the four sides. The massive lower floor is topped'
            ' by three receding terraces. The second cube is much smaller and contains the principal Buddha '
            'image. The cube is topped by another four receding terraces. Small stupas are placed on the '
            'corners of both the lower and upper terraces.',

        //Info 3
        'The top of the Gawdawpalin temple comprises of a sikhara and a hti, a spire ornament shaped like '
            'an umbrella found on top of most Burmese temples. The sikhara, an Indian style tower structure'
            ' is much like that of the Ananda, although the sikhara of the Ananda is completely gilded. '
            'Each side of the pagoda has an entrance with porticoes protruding out from the structure. '
            'The Eastern one is the main entrance and protrudes out more, which breaks the symmetry of the '
            'structure. The pediments over the windows and entrance gateways contain intricately carved '
            'motifs; some of the original stucco is still in place. Inside the temple are Buddha images '
            'seated on pedestals as well as a number of Nat spirit statues; most of the temple’s murals '
            'have faded. The temple grounds are surrounded by a wall with four entrance gates. The main '
            'entry to the complex on the East end is guarded by two large white lion statues. The Gawdawpalin'
            ' has been extensively restored after the 1975 earthquake that seriously damaged the temple.'
    ),

    //22 - Dhammayazika Pagoda
    Place(
        'Dhammayazika Pagoda',
        'assets/dhammayazika-pagoda.jpeg',
        '4.6',

        'Narapatisithu',
        '1198',

        //Info 1
        'Located in a remote area of the Bagan plains is the magnificent Dhammayazika Pagoda. The pagoda '
            'was build by King Narapatisithu towards the end of the 12th century to enshrine a number of '
            'sacred Buddhist relics given to him by the King of Sri Lanka. The Dhammayazika is a brick structure,'
            ' surrounded by five smaller structures that each enshrine an image of one of the five Buddhas of the'
            ' current Kalpa. The pagoda is topped by a very large, impressive bell shaped fully gilded dome. The'
            ' dome with horizontal concentric rings is beautifully decorated with several motifs, including lotus buds.',

        //Info 2
        'Where most of the Bagan monuments have a square floor plan, the Dhammayazika has a pentagonal layout.'
            ' There is an entrance on each of its five sides. The five sided floor plan was intended to include'
            ' veneration of the Maitreya Buddha, the future Buddha yet to appear on earth. Most of the large Bagan'
            ' monuments with a square floor plan have a statue of the Buddha on each of the four sides of the'
            ' structure, one for each of the four previous Buddhas that have reached nirvana, the Kassapa Buddha,'
            ' the Kakusandha Buddha, the Konagamana Buddha and the Gautama Buddha.',

        //Info 3
        'On each of the five sides of the Dhammayazika pagoda is a smaller structure enshrining an image of '
  'the Buddha. Besides images of the four previous Buddhas, the fifth structure holds an image of the Maitreya'
  ' Buddha, the future Buddha. The five structures are topped with a sikhara (a tower like structure similar '
            'to that on the Ananda temple) and a gilded hti, an ornamental spire shaped as an umbrella. '
            'The three receding terraces that form the base of the dome contain glazed terracotta plaques with '
            'depictions of the 547 Jataka tales, the stories about the previous lives of the Buddha. Some of the'
            ' beautiful plaques have weathered badly and are in a bad state. The walkway towards the temple’s '
            'entrance is lined with vendors selling souvenirs and local products. A brick stairway leads up to '
            'the large, arched and intricately decorated entrance gate. The Dhammayazika pagoda is set in a garden '
            'like environment with flowers and trees, in the otherwise mostly dry and often barren plains of Bagan.'
    ),

    //23 - Seinnyet Nyima pagoda
    Place(
        'Seinnyet Nyima pagoda',
        'assets/seinnyet-nyima-pagoda-bagan.jpeg',
        '4.3',

        'Queen Seinnyet and sister',
        '12th century',

        //Info 1
        'In a more remote area away from the main temples are the Seinnyet Ama temple and the Seinnyet Nyima '
            'Pagoda, also known as the Seinnyet sister temples. Located on a small hill a few kilometers South'
            ' of old Bagan the two monuments are found in a single complex, surrounded by a low brick wall. The'
            ' temple and the pagoda were built in the 12th century by Queen Seinnyet and her sister. The Seinnyet'
            ' Ama which means elder sister is a Gu Phaya and the Seinnyet Nyima which means younger sister is a Pahto.',

        //Info 2
        'The Seinnyet Ama is a Gu Phaya or hollow temple built by Queen Seinnyet in the 12th century. The one'
            ' storey structure has a square, symmetrical floor plan. The base of the temple is a cube with '
            'entrances on all four sides, the Eastern being the main entrance. The entrance porches extend slightly'
            ' out of the main structure. On top of the cube are four receding terraces, of which the lower three have'
            ' small stupas on each of its corners. On top of the fourth terrace is a sikhara, a tower structure originating '
            'from North India. The top of the Seinnyet Ama consists of a circular spire ornament. Some of the carved stucco'
            ' decorations on the pediments over the entrances remain today, although much of it has not survived. They'
            ' contain depictions of several mythical creatures such as dragons and ogresses, as well as animals like lions,'
            ' peacocks and birds. Inside the temple is a Buddha in an arched recess seated on a stone pedestal in the '
            'Bhumisparsha mudra, as well as murals with depictions of the Jataka tales, the stories about the previous '
            'lives of the Buddha.',

        //Info 3
        'The Seinnyet Nyima is a phato or pagoda built in the 12th century by Queen Seinnyet’s sister. This pagoda '
            'is believed to be older than the Seinnyet Ama temple. The pagoda is solid with a square floor plan. On '
            'the base are three receding terraces with small stupas on each of its four corners. A bell shaped dome '
            'is placed on the third terrace. On top of the dome is the Amalaka, a circular stone disk with vertical ridges '
            'on the outer edge. The top of the Seinnyet Nyima consists of the Kalasam, a finial with concentric rings.'
    ),

    //24 - Pyathadar Temple
    Place(
        'Pyathadar Temple',
        'assets/pyathadar-temple-bagan.jpeg',
        '4.4',

        'Kyaswa',
        'First half of the 13th century',

        //Info 1
        'The Pyathadar is a very large, impressive brick temple located South East of old Bagan. '
            'The massive structure, also known as the Pyathatgyi is one of the few remaining “double cave”'
            ' monasteries. Most of these temples were built of wood and have long gone. '
            'The Pyathadar was built in the first half of the 13th century by King Kyaswa, a devout Buddhist.'
            ' It is one of the last of the large temples built in Bagan, as in the 13th century land was becoming '
            'scarce in the Bagan empire. The late period temple shows the progression in architectural skills '
            'of the Bagan builders in the use of large vaulted rooms and broad corridors. The Pyathadar '
            'enshrines several large sitting and standing images of the Buddha in various postures. A project '
            'to restore the Pyathadar temple was completed in 1998.',

        //Info 2
        'The Pyathadar is a symmetrical structure but for the Western entrance porch which protrudes out from '
            'the building. The massive porch is flanked by two smaller entrances on either side. At the center '
            'of the East wall is another huge vaulted entry porch. The central entrance is flanked by two smaller '
            'vaulted entrances. Inside the structure seated on a pedestal is a large Burmese style image of the '
            'Buddha in the “Calling the Earth to witness” posture, which is visible from the outside. Inner '
            'passageways lead around the temple’s entire structure. Niches in the walls enshrine images of the Buddha.',

        //Info 3
        'A staircase leads to the large terrace on top of the Pyathadar. At its center is a smaller structure shaped'
            ' like a temple. The symmetrical structure has en entrance hall on each of its sides, that protrude out '
            'from the structure. On top is a sikhara, similar to that of the Ananda pagoda. The sikhara is topped with '
            'a golden multi tiered ornamental spire, called hti. From the terraces visitors have good views of the'
            ' surrounding Bagan plains and its countless temples, including the Sulamani and the Dhammayangyi. '
            'The Pyathadar is a popular place to watch the sunset. Candles on the stairways illuminate the pitch '
            'dark way to the temple’s terrace.'
    ),

    //25 - History of Bagan
    Place(
        'History of Bagan',
        'assets/bagan.jpeg',
        '5.0',

        'King Pyinbya',
        '849 AD ',

        //Info1
        'The Bagan archaeological zone is one of the largest and most important historical sites in South '
            'East Asia. It is located in the dry zone of Central Burma, on the East bank of the Irrawaddy river.'
            'Settlement of the Bagan area most likely started halfway the 9th century. Over the next two centuries'
            ' settled area gradually extended until in the year 1044 King Anawrahta founded the Bagan Kingdom. '
            'At that time the Kingdom included still a relatively small area where people were mainly involved in '
            'farming. As Bagan is located in the dry zone of Burma, the area receives little rain and is dependent'
            ' on irrigation for farming. The Bagan people managed to develop and improve water management systems'
            ' to irrigate the land. They built a system of dams, waterways and sluices which enabled them to '
            'cultivate dry land and turn it into farmland. This ability allowed them to expand into the dry desert'
            ' like area, which attracted more people, thus expanding the Kingdom. ',


        //Info 2
        'At that time Buddhism did not yet play an important role in the country. King Anawrahta was '
            'converted to Theravada Buddhism by a monk named Shin Arahan from the Thaton Kingdom, '
            'one of the Mon Kingdoms that existed in Burma at the time. The King decided to spread Buddhism '
            'and started a massive campaign to build thousands of Buddhist temples, pagodas and other monuments. In the year 1057 King Anawrahta invaded the Thaton Kingdom. After the invasion the Tripitaka, the sacred Buddhist scriptures containing the teachings of the Buddha were brought back to Bagan.'
            'A large number of architects, builders and artisans from Thaton were also brought over to Bagan,'
            ' who worked on the design and construction of thousands of Buddhist temples and pagodas. This was'
            ' the time that the temple building began on a massive scale. Much of the empire’s wealth was used '
            'towards construction of Buddhist monuments. King Anawrahta who ruled Bagan from 1044 until 1077 '
            'had a number of impressive temples built, including the Shwezigon pagoda and the Shwesandaw pagoda.',


        //Info 3
        'Over the next centuries thousands of temples and pagoda were built by Royals as well as prosperous'
            ' inhabitants of the city in order to gain religious merit. Bagan became an important center for '
            'Theravada Buddhism and study and attracted monks from far away countries. More than 10,000 temples and monuments '
            'were built at the height of the Kingdom’s power between the 11th and 13th century. King Anawrahta’s '
            'successors further expanded the Kingdom; according to several sources the empire reached as far as parts '
            'of present day Thailand. The empire experienced prosperous times, mainly based on agriculture. '
            'During the Kingdom’s most powerful period from the end of the 12th century until mid 13th century, '
            'Bagan had up to 2 million inhabitants. At that time Bagan and the Khmer empire of present day Cambodia'
            ' were the most powerful empires in South East Asia. Because so much fertile land was used towards construction of'
            ' temples and pagodas, farm land was becoming scarce during the 13th century, which posed a threat to the Kingdom’s wealth.'
            'Towards the end of the 13th century Bagan was invaded several times by the Mongol armies led by '
            'Kublai Khan, the Great Khan of the Mongol empire who reigned from 1260 until 1294. Another invasion'
            ' in 1297 finally led to the end of the Bagan empire. After the 15th century Bagan was mostly '
            'deserted and most temples fell into disrepair. The town was still a destination for pilgrimage,'
            ' but the number of temples that was maintained well was limited to some of the most famous temples '
            'such as the Ananda and the Shwezigon. Of the well over 10,000 monuments built some 2,200 remain today. '
            'The structures still standing are built of brick, while the wooden buildings like the Palace and the houses have not survived. '
            'The remaining temples and pagodas are in various states of repair, some very well maintained and restored, while others are '
            'neglected and overgrown with vegetation. UNESCO has placed the Bagan archaeological zone on its tentative list for consideration '
            'as a future World Heritage Site.'

    )

  ];

  static List<Place> topCards = [
    //1 - Ananda Temple
    Place(
        'Ananda Temple',
        'assets/ananda_temple_bagan.jpeg',
        '4.7',

        'Kyanzittha',
        '1090 - 1105',

        //Info 1
        '\t\t\t\tAnanda was built in 1105, although it has been badly damaged but now has been '
            'restored to serve tourists. The feature that differs Ananda to the rest of the temples'
            ' is the gold-plated tower. In the middle of the plain of Bagan, the top of Ananda tower'
            ' can be seen extremely prominent and unique. According to legend, the story of Ananda'
            ' Temple is associated with 8 monks from India. Once, the monks went to see King Kyanzittha'
            ' and told him the temple in the Himalayas they were practicing. After being impressed with '
            'the monks story, the King immediately built a temple of similar structure in Bagan.'
            ' It took 15 years for the temple to be completed.',

        //Info 2
        'Ananda has a very symmetrical structure with a Greek diagonal layout, which makes'
            ' it one of Bagan\'s most beautiful and sacred temples. Tourists will easily realize'
            'that the temple also has some Indian influence. A long corridor but simple, not too picky like any'
            'other places with a central square of 53m. The pathways create a perfect entrance, the stairs are'
            ' decorated with 554 ceramic tiles, on which the story of the Buddha is told,'
            ' which will not make visitors bored while discovering the temple. Ananda is'
            ' about 51m high and is the best restored ancient temple in Bagan. Inside Ananda'
            ' Temple are four Buddha statues of nearly 10 meters height, have reached the Nirvana'
            ' realm, each face in a different direction: Buddha Kassapa (south), Buddha Kakusandha '
            '(north), Buddha Konagamana (east) and Buddha Gautama (west direction). Stone sculptures'
            ' and frescoes on the walls are also very outstanding. It is considered a famous wonder'
            ' of architecture and is also one of four certain temples to come in Bagan along with '
            'Shwezigon temple, Dhammayangyi temple and Shwesandaw temple. In the evening, the temple'
            ' is lit with colorful lights to create an enchanting atmosphere, promising tourists '
            'countless of magical photos.',


        //Info 3
        'Just like other temples in Bagan, tourists must leave all footwear outside and only barefoot inside.'
            ' Skirts or shorts are not recommended as they may be refused entry to the temple. '
            'The best time to visit Ananda is from October to February every year because of the cool air,'
            ' low rainfall, which is also suitable for a hot air balloon ride. Visitors can also join '
            'the festival of Ananda Temple, which falls on Pyatho\'s full moon (between December and'
            ' January according to the lunar calendar), attracting thousands of locals. Up to'
            ' a thousand monks read the Sutra from day to night during the three- day festival, '
            'which is a really nice experience for you to deeply understand the culture of Buddhism '
            'in general and Myanmar in particular. Temple\’s tour and transportation are available'
            ' upon request at every hotel.'
    ),

    //2 : Archeological Museum
    Place(
        'Archeological Museum',
        'assets/museum.jpeg',
        '4.3',

        'N/A',
        '1904',

        //Info : 1
        'The Bagan Archaeological Museum was opened on 17th April 1998 in the world renowned ancient '
            'city Bagan, in Mandalay Division, Upper Myanmar. It is situated near the Gawdawt Palin Pagoda.'
            ' The first archaeology museum in the true sense of the term was built near the northern covered'
            ' cause way of Ananda Temple in 1904, in a very modest way. A small oblong one storey brick '
            'building of 60 feet by 30 feet in which some ancient stone inscriptions, Buddha images and '
            'other cultural objects collected from the Bagan area were haphazardly displayed. After some '
            'years as a large number of new art objects and antiquities were added, the museum looked like '
            'an overstocked storehouse.',

        //Info : 2
        'In 1976 the site to the south of Gawdawt Palin Pagoda was selected and designated for Archaeological '
            'Museum Compound in which an octagonal shaped museum building was constructed. In it were displayed'
            ' very rare and fragile artifacts excavated from ruined Bagan monuments. Three big oblong sheds were '
            'built near it as annexure under which stone inscriptions and stone statues of the Bagan Period were '
            'displayed. It was called Archaeological Site Museum Bagan and was officially opened in October 1979. '
            'There are many display rooms. On the ground floor there is a fully decorated and air-con hall large '
            'enough to hold international conference, symposium, seminar or meeting. On this floor are the display '
            'room for objects of visual arts of the Bagan Period such as terra cotta, stucco works, wood carvings, '
            'stone sculptures, metal works, lacquer works, etc., the showroom exhibiting models of 55 different '
            'coiffeurs used by fashionable court ladies of the Bagan Period, the display room in which originals, '
            'replicas and ink copies of Bagan stone inscriptions and other forms of epigraphy, the gallery where '
            'paintings by famous Myanmar artists of to-day depicting the social life and military might of ancient '
            'Bagan, as well as copies of frescoes on walls and ceilings of ancient temples, and the display room in '
            'which models of Bagan monuments of architectural and artistic wonder.',

        //Info : 3
        'Going up to the second floor by grand marble floored stairways, we reach the display rooms on religious '
            'themes. Here we find that exhibits are Buddha statues and images of various makes, postures, and styles providing '
            'us some knowledge of Buddhist iconography. In the room of Buddhist Art are displayed objects of all visual Buddhist '
            'arts. Viewers of these objects may well appreciate the depth and extent of Buddhist influence upon Myanmar culture. '
            'Here on the second floor is another art gallery, but it specialises in religious themes. Paintings by artists of '
            'to-day and murals by master painters of Bagan’s time on display in the gallery all represent Bagan pagodas and '
            'monuments or depict Buddhist stories - jatakas. Next above the second floor is the flat roof of the whole building '
            'from where pilgrims, visitors and tourists can enjoy a panoramic view of the entire "pagoda land" of Bagan and '
            'patiently wait for the right moment to watch the "large orange coloured globe" gradually sinking behind the Tantkyi '
            'Taung hill range on the west bank of the mighty Ayeyawaddy River. To crown the pleasures of your visit to Bagan a big '
            'bronze statue awaits your attention in the centre of the round-about lawn in the front of the museum’s portico. '
            'The statue represents the hero king Pyusawhti (A.D.167-242), the third king in the Bagan dynasty of 55 kings. '
            'Legend has it that he conquered the five enemies who had been molesting Bagan by slaying them with his mighty '
            'bow and arrows. The enemies were the big bird, the big boar, the big tiger, the big flying squirrel and the wild '
            'weed bu (gourd). The Bupaya Pagoda standing on the brink of the Ayeyawaddy River at Bagan is attributed to Pyusawhti. '
            'It stands on the site where the hero king finally eradicated the troublesome weed. Visitors to Bagan have now two grand '
            'museums. The entire area of 16 square miles of Bagan Archaeological Zone itself is a field museum of nearly ten '
            'centuries old and a splendid modern museum of very recent time.'
    ),

    //3 : Dhammayangyi Temple
    Place(
        'Dhammayangyi Temple',
        'assets/dhammayangyi.jpeg',
        '4.6',

        'Narathu',
        '1170',

        //Info - (1)
        'The Dhammayangyi is the largest temple on the plains of Bagan. From a distance it resembles the early step pyramids of Egypt.'
            'The enormous structure that was never completed consists of a massive square base topped by six receding terraces.'
            ' The Dhammayangyi temple was build by King Narathu in 1170. Narathu became King of Bagan after murdering his father'
            ' and his brother, who was next in line to become King. Narathu was probably worried about bad karma and build to'
            ' massive temple to gain merit and to compensate for murdering his father and brother.The King was later murdered '
            'himself. There are several stories going around about the death of Narathu. One storey goes that the King was'
            ' murdered by a group of Indians sent by the King of Pateikkaya. The murder was in revenge for the killing of'
            ' one of Narathu’s wives, who was a Princess of Pateikkaya. Another is that Narathu was killed by invaders from Sri Lanka.',

        //Info - (2)

        'The Dhammayangyi temple was never fully completed. Construction was probably halted right after the death of the King. '
            'Much of the temple’s interior was filled with construction debris, including three of the four sanctums in the inner core'
            ' and and most of the two corridors that run around the temple’s central core. It is possible that the temple’s interior'
            ' was intentionally filled with debris by resentful workers because of Narathu’s very harsh rule or possibly to prevent '
            'the ghost of King Narathu from leaving the temple. The brick work of the Dhammayangyi was done with great precision. '
            'The storey goes that King Narathu had the laborers killed or their hands chopped off if the work was not done perfectly.',

        //Info - (3)
        'The sides at the base of the structure are almost 78 meters long, while the central core of the temple measures '
            '25 meters long. There are four entrances that each contain a seated Buddha image on a pedestal, the main entrance'
            ' is the Eastern one. The Western sanctum contains images of the Gautama Buddha and the future Maitreya Buddha,'
            ' side by side. The sikhara, a tower like structure originating from North India, that was once on top of the'
            ' Dhammayangyi has collapsed. The temple grounds are surrounded by a wall with huge arched gates that lead to '
            'the pagoda. To prevent further deterioration the terraces of the temple are closed to the public.'
    ),

    //4 : Shwe Zi Gon
    Place(
        'Shwe Zi Gon Pagoda',
        'assets/shwezigon.jpeg',
        '4.6',

        'Anawrahta',
        '1090',

        //Info1
        'The Shwezigon Pagoda is one of the oldest and most impressive monuments of Bagan.'
            'Most noticeable is the huge gold plated pagoda glimmering in the sun. The design of the Shwezigon Pagoda'
            ' has been copied many times across Burma over the centuries.Several shrines and temple buildings have been '
            'added to the complex since construction of the stupa in the year 1090. As the pagoda enshrines a number of '
            'sacred Buddhist relics, it is an important pilgrimage site for Buddhists.The Shwezigon festival held during'
            ' the 9th month of the Burmese calender (December) attracts thousands of devotees. This was originally a month'
            ' dedicated to paying respect to the ancient Nat spirits, before Theravada Buddhism became prevalent in Burma.'
            'After dark the pagoda is wonderfully illuminated by spotlights that give the place a mystical atmosphere.'
            ' The Shwezigon was damaged by several earthquakes including the large 1975 quake, but has been restored since.',


        //Info2
        'The Shwezigon Pagoda was built by King Anawrahta who founded the Bagan Kingdom in 1044. '
            'After a monk from the Thaton Kingdom had converted the King to Theravada Buddhism the campaign of massive'
            ' temple building began on the plains of Bagan. King Anawrahta built the pagoda to enshrine several Buddha relics,'
            ' including a copy of the sacred tooth relic of Kandy in Sri Lanka. According to legend, the spot where the pagoda'
            ' was to be built was chosen by a white elephant carrying the relic on his back. Construction started around 1059, '
            'the pagoda was completed at the end of the 11th century during the reign of King Kyanzittha. The pagoda sits in the '
            'center of a large platform, around which several other shrines and pagodas have been built. The bell shaped stupa that '
            'is completely gilded sits on a square base, of which the sides are about 49 meters long. At the base of the pagoda sits'
            ' a large golden lion at each of its corners. On top of the base are three receding terraces. The third one has a small'
            ' stupa on each of its four corners. The solid and completely symmetrical stupa on top of the terraces is almost 49 meters'
            ' high. On top of the pagoda is a hti, a spire ornament shaped as an umbrella, that is found on almost every Burmese temple. '
            'All four sides of the pagoda have a central stairway guarded by Makaras (sea creatures from Hindu mythology) leading '
            'to the top of the terraces. The three terraces contain beautiful glazed terra-cotta plaques depicting scenes from '
            'the 547 Jataka tales, the stories about the previous lives of the Buddha. Before Buddhism was introduced to Bagan,'
            ' Nat spirit worshipping was prevalent. King Anawrahta allowed the images of the 37 most highly venerated Nats '
            'to be put on the lower terraces of the Shwezigon Pagoda. The Nat images have since been moved and can now be '
            'found inside a small hall next to the platform. Nat worshipping is still very much alive in current day Burma,'
            ' the Mount Popa close to Bagan is known as the home of the Nats. Along all four sides of the pagoda opposite the '
            'stairway to the third terrace is a pavilion that contains a large standing Buddha image from the 12th century.'
            ' Two pillars with texts inscribed in Mon language from the end of the 11 century tell the early history of the'
            ' Shwezigon Pagoda.',


        //Info 3
        'The Shwezigon complex is surrounded by a wall measuring 230 meters on each side with an access gate in all of its'
            ' four sides. At the main entrance gate is an enormous white mythological lion standing guard. A long covered '
            'walkway with vendors leads to the pagoda. During the centuries following the construction of the pagoda '
            'several other structures have been added to the temple complex. Around the platform are several Tazaungs,'
            ' a Burmese style open pavilion. A number of temple buildings are topped with a Pyatthat, an intricately decorated'
            ' Burmese roof made of several receding layers. Several structures are topped with a Sikhara, a tower like '
            'structure originating from North India. Unlike the Sikhara of the Ananda temple that is one of Bagan’s best '
            'known landmarks, these Sikharas are not gilded. The complex also contains a small whitewashed pagoda and '
            'several structures where Buddha images are enshrined.'
    ),

    //5 : Mt. Popa
    Place(
        'Mt. Popa',
        'assets/popa.jpeg',
        '4.3',

        ' N/A ',
        ' N/A ',

        //Info : 1
        'Mount Popa is an extinct volcano on the slopes of which can be found the sacred Popa Taungkalat'
            ' monastery, perched dramatically atop a huge rocky outcrop. The monastery is entirely surrounded by '
            'sheer cliff faces and offers stunning views of the surrounding plains and Mount Popa itself.',

        //Info : 2
        'The monastery at Taungkalat (meaning ‘Pedestal Hill’) is famed for being home to 37 nats '
            '(Burmese spirits), which are represented by statues at the base of the volcanic outcrop. From here, '
            'you can climb up the 777 steps to the monastery at the top, where you will find a 360 degree panorama '
            'and a labyrinth of shrines to explore. But beware the macaques! These little locals may look curious and '
            'friendly from a distance, but given half a chance they will steal anything they can get their hands on: '
            'food, purse or camera! There are a number of teahouses and beer stations at the base of Popa Taungkalat, '
            'serving drinks and simple Myanmar dishes. The Mount Popa Nat Festival takes place in March and celebrates'
            ' two brothers who were reincarnated as nats (spirits); for dates and full Myanmar festival listings,'
            ' go to our festivals calendar. For a wider selection of photos from Popa Taungkalat and Mount Popa,'
            ' go to our Flickr photo set.',

        //Info : 3
        'The monastery is frequently confused with the much larger Mount Popa, which looms over it and is sometimes'
            ' called Taung Ma Gyi (Burmese for ‘Mother Hill’). If you have the time and the conditions are right, then'
            ' climbing Mount Popa is well worth the effort; the plunging valleys around the peak are dramatic, and on '
            'a clear day you can witness views stretching vast distances; as far as Bagan and the Irrawaddy River,'
            ' and sometimes beyond. On your way up, you will also find the best views of the Popa Taungkalat Monastery,'
            ' as well as an impressive array of flora and fauna, including many different species of birds and butterflies'
            ' in a striking array of colours and sizes. Some scrambling needs to be done in the steep final section towards'
            ' the 1,518 metre summit, but for the most part it is a straightforward hike of 3-4 hours (one way).'
            ' Make sure to pack plenty of drinks and snacks, however: apart from the luxurious Popa Mountain '
            'Resort (which can be found near the beginning of the climb) there is no food or drink available '
            'at any point on the ascent, and temperature and humidity levels can get very high. You can start '
            'your journey from a number of different places, but the main reference point is the Popa Mountain '
            'Resort turning off point approximately 1.5km from Popa Taungkalat on the Popa Taungkalat to Kyauk '
            'Padaung road (the turning off point is clearly signposted in English).'
    ),
  ];
}