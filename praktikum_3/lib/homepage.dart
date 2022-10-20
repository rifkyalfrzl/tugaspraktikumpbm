// ignore_for_file: prefer_const_constructors 

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:praktikum_3/coffee.dart';
import 'package:praktikum_3/coffee_type.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of coffee types
  final List coffeeType = [
    ['All', true,],
    ['Cappuccino', false,],
    ['Starbucks', false,],
    ['Latte', false,],
  ];

  //user tap coffee type
  void coffeeTypeSelected(int index){
    setState(() {
      for(int i = 0; i < coffeeType.length; i++){
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 201, 193),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu, color: Colors.black54,),
        title: Center(
          child: Text(
            'Coffeehouse',
            style: GoogleFonts.gfsDidot(fontSize: 26, color: Color.fromARGB(255, 21, 21, 21), fontWeight: FontWeight.bold),
            ),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Icon(
            Icons.shopping_bag_rounded, color: Colors.black54,
            ),
        )
          ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 55,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 199, 181, 173),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)
                ),
          ),
          child: Row(
            children: <Widget>[
            Expanded(
              child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Icon(Icons.home, color: Colors.black45,)],
              ),
            )),
            Expanded(
              child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Icon(Icons.favorite, color: Colors.black45,)],
              ),
            )),
            Expanded(
              child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Icon(Icons.category, color: Colors.black45,)],
              ),
            )),
            Expanded(
              child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Icon(Icons.person, color: Colors.black45,)],
              ),
            )),
            ],
          ),
      ),

      body:
        SafeArea(
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 820,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, color: Colors.black87,),
                            hintText: 'Search',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 161, 160, 154),),
                              borderRadius: BorderRadius.circular(100.0)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 161, 160, 154),),
                              borderRadius: BorderRadius.circular(100.0)
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 161, 160, 154),
                          ),
                        ),
                      ),
                      Container(
                          height: 50,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: coffeeType.length,
                            itemBuilder: ((context, index) 
                          {
                            return CoffeeType(
                              coffeetype: coffeeType[index][0], 
                              isSelected: coffeeType[index][1], 
                              onTap: (){{
                                coffeeTypeSelected(index);
                              }});
                          }))

                        ),
                         SizedBox(height: 20,),

                        Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Coffee(
                              coffeeImagePath: 'img/cappucino.png',
                              coffeeName: 'Espresso Cappuccino',
                              coffeeIngridient: 'Dark Roast',
                              coffeePrice: '68',
                            ),
                            Coffee(
                              coffeeImagePath: 'img/americano.png',
                              coffeeName: 'Caffe Mocha Americano',
                              coffeeIngridient: 'Decaf Pike',
                              coffeePrice: '48',
                            ),
                            Coffee(
                              coffeeImagePath: 'img/latte.png',
                              coffeeName: 'Starbucks Dark9',
                              coffeeIngridient: 'Roast Milk',
                              coffeePrice: '58',
                            ),
                          ],
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            "Special for you",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              width: 250,
                              child: Coffee(
                                coffeeImagePath: 'img/luwak.png',
                                coffeeName: 'Luwak White Moccacino',
                                coffeeIngridient: 'Dark Roast',
                                coffeePrice: '28',
                              ),
                            ),
                            Container(
                              width: 250,
                              child: Coffee(
                                coffeeImagePath: 'img/goodday.png',
                                coffeeName: 'GoodDay Cappuccino',
                                coffeeIngridient: 'Decaf Pike',
                                coffeePrice: '30',
                              ),
                            ),
                          ],
                        ),
                        ),
                  ],
                ),
              ),
              
            ],
          ))
    );
  }
}
