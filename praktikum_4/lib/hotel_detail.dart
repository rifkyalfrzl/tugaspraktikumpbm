import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:praktikum_4/home_page.dart';

class HotelDetail extends StatelessWidget {
  final String imgPath;
  final String hotelName;
  final int rating;
  final int price;

  // ignore: prefer_const_constructors_in_immutables
  HotelDetail(
      {super.key, required this.imgPath,
      required this.hotelName,
      required this.rating,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(115, 28, 28, 28),

      body: ListView(
        children: [
          Container(
            height: 751,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imgPath), fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color.fromARGB(67, 0, 0, 0)),
                        //
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(
                              context,
                              const HomePage(),
                            );
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white70,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          color: const Color.fromARGB(65, 0, 0, 0),
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
                                style: GoogleFonts.playfairDisplay(
                                    fontSize: 34,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Carani Hotel Yogyakarta yang bersuasana ceria dan dengan desain berwarna-warni ini menawarkan akomodasi yang bersih dan nyaman di Yogyakarta. Hotel ini terletak di kawasan akademis dengan berbagai universitas, dan berjarak 3 km dari stasiun kereta api utama Yogyakarta.",
                                style: GoogleFonts.lato(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FittedBox(
                                          child: Text(
                                            'Start from ',
                                            style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        FittedBox(
                                          child: Text(
                                            '\$' '$price',
                                            style: GoogleFonts.lato(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 62.4,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(9.6),
                                        color: Colors.white),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 28.8, right: 28.8),
                                        child: FittedBox(
                                          child: Text(
                                            'Explore Now >>',
                                            style: GoogleFonts.lato(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
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
          ),
        ],
      ),
    );
  }
}
