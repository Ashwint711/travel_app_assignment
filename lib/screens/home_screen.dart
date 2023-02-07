import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tavel_app_assignment/models/destination_model.dart';
import 'package:tavel_app_assignment/widgets/destination_carousal.dart';
import 'package:tavel_app_assignment/widgets/hotel_carousal.dart';
import 'package:tavel_app_assignment/widgets/resort_carousal.dart';

import '../models/hotel_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Hotel? hotel;
  List<IconData> _icons = [
    FontAwesomeIcons.umbrellaBeach,
    FontAwesomeIcons.mountain,
  ];
  List<String> _iconText = [
    'Beach',
    'Mountain',
  ];

  int _selectedIndex = 0;
  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 55.0,
        width: 140.0,
        margin: EdgeInsets.only(left: 26.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            width: 1.5,
            color: _selectedIndex == index
                ? Color.fromARGB(255, 20, 241, 27)
                : Color(0xFFE7EBEE),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              _icons[index],
              size: 25.0,
              color: _selectedIndex == index
                  ? Theme.of(context).primaryColor
                  : Colors.grey,
            ),
            Text(
              _iconText[index],
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Articulat',
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(
            top: 40.0,
          ),
          children: [
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 1st child
                  Padding(
                    padding: EdgeInsets.only(left: 26.0),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 8.0),
                          child: CircleAvatar(
                            radius: 15.0,
                            backgroundColor: Color.fromARGB(255, 195, 193, 193),
                          ),
                        ),
                        Text(
                          'Hello, Vineetha',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontFamily: 'Articulat',
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 2nd child
                  Icon(FontAwesomeIcons.bell),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 26, right: 10.0),
              child: Text(
                'Where do you \nwant to explore today?',
                style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Articulat'),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.only(left: 26, right: 26.0),
              child: Container(
                height: 45.0,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Search',
                    filled: true,
                    fillColor: Color.fromARGB(255, 245, 243, 243),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.only(left: 26.0, right: 26.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose Category',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () => print('See all'),
                    child: Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            //ICON'S
            Row(
              children: _icons
                  .asMap()
                  .entries
                  .map((MapEntry map) => _buildIcon(map.key))
                  .toList(),
            ),
            SizedBox(height: 30.0),
            DestinationCarousel(),
            SizedBox(height: 30.0),
            /** */
            HotelCarousal(),
            // ResortCarousal(),
          ],
        ),
      ),
    );
  }
}
