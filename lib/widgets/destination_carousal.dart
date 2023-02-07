import 'package:flutter/material.dart';
import 'package:tavel_app_assignment/widgets/rating_bar.dart';
import '../models/destination_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/hotel_model.dart';
import '../screens/destination_screen.dart';

class DestinationCarousel extends StatelessWidget {
  const DestinationCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          // color: Colors.red,
          height: 225.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (BuildContext context, int index) {
              Destination destination = destinations[index];
              Hotel hotel = hotels[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DestinationScreen(destination: destination),
                  ),
                ),
                child: Container(
                  width: 190.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Hero(
                              tag: destination.imageUrl,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Image(
                                        height: 230.0,
                                        width: 195.0,
                                        image: AssetImage(destination.imageUrl),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 7),
                                      height: 110,
                                      width: 182,
                                      decoration: new BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: new LinearGradient(
                                          end: const Alignment(0.0, -1),
                                          begin: const Alignment(0.0, 0.0),
                                          colors: <Color>[
                                            const Color(0x8A000000),
                                            Colors.black12.withOpacity(0.0)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 16.0,
                              left: 25.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8.0),
                                    child: Text(
                                      destination.destinationName,
                                      style: TextStyle(
                                        fontSize: 23.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 4.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.locationDot,
                                          color: Colors.white,
                                          size: 10.0,
                                        ),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text(
                                          '${destination.city}, ',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          destination.country,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      RatingBar(
                                          rating: destination.rating,
                                          ratingCount: 25),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        destination.rating.toString(),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
