// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:praktikum_4/components/hotels_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF6F7FF),
        title: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                )),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Pick your destination',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(30),
                  shadowColor: Color(0x55434343),
                  child: TextField(
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: 'Search for Hotel...',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        TabBar(
                          isScrollable: true,
                          indicatorColor: Color(0xFFFE8C68),
                          unselectedLabelColor: Color(0xFF555555),
                          labelColor: Color(0xFFFE8C68),
                          labelPadding: EdgeInsets.symmetric(horizontal: 16.0),
                          labelStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          tabs: const [
                            Tab(
                              text: 'Trending',
                            ),
                            Tab(
                              text: 'Promotion',
                            ),
                            Tab(
                              text: 'Top Hotel',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 300.0,
                          child: TabBarView(children: [
                            Container(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: const [
                                  HotelCard(
                                    imgPath: 'images/carani-hotel.jpg',
                                    hotelName: 'Carani Hotel',
                                    location: 'Yogyakarta',
                                    rating: 5,
                                    price: 100,
                                  ),
                                  HotelCard(
                                    imgPath: 'images/fieris-hotel.jpg',
                                    hotelName: 'Fieris Hotel',
                                    location: 'Jakarta',
                                    rating: 5,
                                    price: 120,
                                  ),
                                  HotelCard(
                                    imgPath: 'images/hotel-cawang.jpg',
                                    hotelName: 'Cawang Hotel',
                                    location: 'Karawang',
                                    rating: 4,
                                    price: 50,
                                  ),
                                  HotelCard(
                                    imgPath: 'images/l-hotel.jpg',
                                    hotelName: 'L Hotel',
                                    location: 'Bali',
                                    rating: 5,
                                    price: 150,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: const [
                                  HotelCard(
                                    imgPath: 'images/bali.jpg',
                                    hotelName: 'Visit Bali',
                                    location: 'Bali',
                                    rating: 5,
                                    price: 250,
                                  ),
                                  HotelCard(
                                    imgPath: 'images/bandung.jpg',
                                    hotelName: 'Visit Bandung',
                                    location: 'Jakarta',
                                    rating: 5,
                                    price: 200,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: const [
                                  HotelCard(
                                    imgPath: 'images/fieris-hotel.jpg',
                                    hotelName: 'Fieris Hotel',
                                    location: 'Jakarta',
                                    rating: 5,
                                    price: 120,
                                  ),
                                  HotelCard(
                                    imgPath: 'images/l-hotel.jpg',
                                    hotelName: 'L Hotel',
                                    location: 'Bali',
                                    rating: 5,
                                    price: 150,
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFB7B7B7),
        selectedItemColor: Color(0xFFFE8C68),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'BookMark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Destination',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
