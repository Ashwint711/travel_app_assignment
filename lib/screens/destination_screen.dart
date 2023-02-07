import 'package:flutter/material.dart';
import 'package:tavel_app_assignment/models/destination_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/rating_bar.dart';

class DestinationScreen extends StatelessWidget {
  final Destination destination;
  DestinationScreen({required this.destination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    )
                  ],
                ),
                child: Image(
                  image: AssetImage(destination.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -10.0,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 200,
                        width: 600,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              topLeft: Radius.circular(20.0)),
                          gradient: new LinearGradient(
                            end: const Alignment(0.0, -1.0),
                            begin: const Alignment(0.0, 0.0),
                            colors: <Color>[
                              const Color(0x8A000000),
                              Colors.black12.withOpacity(0.0)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            destination.destinationName,
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600,
                                // letterSpacing: 1.2,
                                fontFamily: 'Articulat',
                                color: Colors.white),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            destination.longDescription,
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontFamily: 'Articulat',
                            ),
                            maxLines: 5,
                          ),
                          SizedBox(height: 15.0),
                          Row(
                            children: [
                              RatingBar(
                                  rating: destination.rating, ratingCount: 28),
                              SizedBox(width: 5.0),
                              Text(
                                destination.rating.toString(),
                                style: TextStyle(
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Articulat',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '₹${destination.price}/person',
                                style: TextStyle(
                                    fontFamily: 'Articulat',
                                    fontSize: 16.0,
                                    color: Colors.white),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 120),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.amber,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                  onPressed: () {
                                    print('Book Now Button');
                                  },
                                  child: Text(
                                    'Book Now',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              )
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
        ],
      ),
    );
  }
}
