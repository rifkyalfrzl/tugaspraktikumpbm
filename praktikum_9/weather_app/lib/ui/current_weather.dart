import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget currentWheather(IconData icon, String temp, String location){
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.orange,
          size: 64.0,
        ),
        const SizedBox(height: 10.0,),
        Text(
          temp,
          style: GoogleFonts.poppins(fontSize: 36.0, color: Colors.black)
        ),
        const SizedBox(height: 10.0,),
        Text(
          location,
          style: GoogleFonts.poppins(fontSize: 18.0, color: const Color(0xFF5a5a5a))
        ),
      ],
    ),
  );
}