import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:praktikum_3/coffee_desc.dart';

class Coffee extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeeIngridient;
  final String coffeePrice;

  Coffee({
    required this.coffeeImagePath, 
    required this.coffeeName, 
    required this.coffeeIngridient, 
    required this.coffeePrice,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, bottom: 25.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 150,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.black87,
          ),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //coffee image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Center(child: Image.asset(coffeeImagePath, width: 100, height: 100,))
                ),

              //coffee name
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        coffeeName,
                        style: GoogleFonts.gfsDidot(fontSize: 20, color: const Color.fromARGB(255, 199, 181, 173),),
                        maxLines: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        coffeeIngridient,
                        style: GoogleFonts.poppins(fontSize: 12, color: const Color.fromARGB(255, 199, 181, 173),),
                        ),
                    ),
                    //price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text('\$' + coffeePrice, style: GoogleFonts.poppins(fontSize: 16, color: const Color.fromARGB(255, 200, 140, 71)), ),
                      ),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 179, 121, 41),
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: const Icon(Icons.add)),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CoffeeDesc(coffeeImagePath: this.coffeeImagePath, coffeeName: this.coffeeName)),);
                          },
                      ),
                    ],)
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}