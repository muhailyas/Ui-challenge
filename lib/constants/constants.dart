import 'package:flutter/material.dart';

class Constants {
  static double width = 0;
  static double height = 0;
  static String imageUrl =
      "https://imgs.search.brave.com/7rePbPfCq5alu4J6s-lFHhhaLcATiEfDhlJbNIb8jLo/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9k/YXJrLWFic3RyYWN0/LXRleHR1cmVfMTAx/Ny01Nzg4LmpwZz9z/aXplPTYyNiZleHQ9/anBn";
}

setSize(BuildContext context) {
  Constants.height = MediaQuery.of(context).size.height;
  Constants.width = MediaQuery.of(context).size.width;
}

List<List> items = [
  [
    'Business',
    'https://images.pexels.com/photos/926390/pexels-photo-926390.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  ],
  [
    'Music',
    'https://images.pexels.com/photos/462510/pexels-photo-462510.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  ],
  [
    'Parties',
    'https://images.pexels.com/photos/1190297/pexels-photo-1190297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  ],
  [
    'Cooking',
    'https://images.pexels.com/photos/1267320/pexels-photo-1267320.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  ],
  [
    'Comedy',
    'https://images.pexels.com/photos/18284209/pexels-photo-18284209/free-photo-of-man-with-a-mustache-and-wearing-a-black-hat-making-a-facial-expression-on-a-street.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  ],
  [
    'Christmas',
    'https://images.pexels.com/photos/3149896/pexels-photo-3149896.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  ],
];

List<List> items2 = [
  [
    'TMT Pushkar Holi Party',
    'Nagpur',
    'Sat Mar 23 2024',
    "https://images.pexels.com/photos/1105666/pexels-photo-1105666.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Mar 23, Saturday"
  ],
  [
    'PMF Pushkar Holi Nagpoor',
    'railway station Nagpoor',
    'Sat Mar 23 2024',
    "https://images.pexels.com/photos/1684187/pexels-photo-1684187.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Mar 23, Saturday"
  ],
  [
    '30th COMP-EX 2024',
    'Rashimbagh Ground, Nagpoor',
    'Thur Jan 25 2024',
    "https://images.pexels.com/photos/3171837/pexels-photo-3171837.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Jan 25, Thursday"
  ],
  [
    'Love in July (7 pm Show)',
    'Medai, No.15,KHB MIG Colony, 5th Block, Koramangala',
    'Fri Jan 19 2024',
    "https://images.pexels.com/photos/1763075/pexels-photo-1763075.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Jan 19, Friday"
  ],
];
