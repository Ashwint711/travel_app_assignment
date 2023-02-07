import 'package:flutter/material.dart';
import 'package:tavel_app_assignment/widgets/rating_bar.dart';
import '../models/hotel_model.dart';

class HotelCarousal extends StatelessWidget {
  const HotelCarousal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Package',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  // letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () => print('See All'),
                child: Text(
                  'See All',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                      color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: hotels.map((hotel) {
              return Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                      color: Colors.grey,
                    ),
                    // color: Colors.red,
                  ),
                  height: 175,
                  width: 330,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    width: 240.0,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          left: 0.0,
                          bottom: 7.0,
                          child: SizedBox(
                            width: 90,
                            height: 140,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image(
                                image: AssetImage(hotel.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            height: 150.0,
                            width: 210.0,
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    hotel.name,
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.w600,
                                        // letterSpacing: 1.2,
                                        fontFamily: 'Articulat'),
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    '₹${hotel.price}',
                                    style: TextStyle(
                                        fontFamily: 'Articulat',
                                        fontSize: 18.0,
                                        color:
                                            Color.fromARGB(255, 255, 111, 0)),
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    children: [
                                      RatingBar(
                                          rating: hotel.rating,
                                          ratingCount: 28),
                                      SizedBox(width: 5.0),
                                      Text(
                                        hotel.rating.toString(),
                                        style: TextStyle(
                                          fontSize: 14.5,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: 'Articulat',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 6.0),
                                  Text(
                                    hotel.description,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontFamily: 'Articulat',
                                    ),
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList()),
        // Container(
        //   height: 300.0,
        //   child: ListView.builder(
        //     scrollDirection: Axis.vertical,
        //     itemCount: hotels.length,
        //     itemBuilder: (BuildContext context, int index) {
        //       //Hotel Object
        //       Hotel hotel = hotels[index];
        // return Container(
        //   margin: EdgeInsets.all(10.0),
        //   width: 240.0,
        //   child: Stack(
        //     alignment: Alignment.topCenter,
        //     children: [
        //       Positioned(
        //         bottom: 15.0,
        //         child: Container(
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10.0),
        //             color: Colors.white,
        //           ),
        //           height: 120.0,
        //           width: 240.0,
        //           child: Padding(
        //             padding: EdgeInsets.all(10.0),
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.end,
        //               children: [
        //                 Text(
        //                   hotel.name,
        //                   style: TextStyle(
        //                     fontSize: 22.0,
        //                     fontWeight: FontWeight.w600,
        //                     letterSpacing: 1.2,
        //                   ),
        //                 ),
        //                 SizedBox(height: 2.0),
        //                 Text(
        //                   hotel.address,
        //                   style: TextStyle(color: Colors.grey),
        //                 ),
        //                 SizedBox(height: 2.0),
        //                 Text(
        //                   '\$${hotel.price} / night',
        //                   style: TextStyle(
        //                       fontSize: 18.0,
        //                       fontWeight: FontWeight.w600),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //             Container(
        //               decoration: BoxDecoration(
        //                 color: Colors.white,
        //                 borderRadius: BorderRadius.circular(20.0),
        //                 boxShadow: [
        //                   BoxShadow(
        //                     color: Colors.black26,
        //                     offset: Offset(0.0, 2.0),
        //                     blurRadius: 6.0,
        //                   ),
        //                 ],
        //               ),
        //               child: ClipRRect(
        //                 borderRadius: BorderRadius.circular(20.0),
        //                 child: Image(
        //                   height: 180.0,
        //                   width: 220.0,
        //                   image: AssetImage(hotel.imageUrl),
        //                   fit: BoxFit.cover,
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       );
        //     },
        //   ),
        // ),
      ],
    );
  }
}
