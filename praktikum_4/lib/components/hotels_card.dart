import 'package:flutter/material.dart';
import 'package:praktikum_4/hotel_detail.dart';

class HotelCard extends StatelessWidget {
  final String imgPath;
  final String hotelName;
  final String location;
  final int rating;
  final int price;

  const HotelCard({super.key, 
    required this.imgPath,
    required this.hotelName,
    required this.location,
    required this.rating,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(right: 22.0),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      elevation: 0,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HotelDetail(
                  hotelName: hotelName,
                  imgPath: imgPath,
                  rating: rating,
                  price: price,
                ),
              ));
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
              scale: 2.0,
            ),
          ),
          width: 200.0,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          for (var i = 0; i < rating; i++)
                            const Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 255, 204, 0),
                            ),
                        ],
                      ),
                      Text(
                        hotelName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        location,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
