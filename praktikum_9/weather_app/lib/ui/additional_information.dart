import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle titleStyle = GoogleFonts.poppins(fontSize: 15.0, fontWeight: FontWeight.w500);
TextStyle infoStyle = GoogleFonts.poppins(fontSize: 15.0, fontWeight: FontWeight.w400);

Widget additionalInformation(String wind,String humidity, String pressure, String feelsLike){
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wind",
                  style: titleStyle,
                ),
                const SizedBox(height: 10.0,),
                Text(
                  "Pressure",
                  style: titleStyle,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  wind,
                  style: infoStyle,
                ),
                const SizedBox(height: 10.0,),
                Text(
                  pressure,
                  style: infoStyle,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Humidity",
                  style: titleStyle,
                ),
                const SizedBox(height: 10.0,),
                Text(
                  "Feels Like",
                  style: titleStyle,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  humidity,
                  style: infoStyle,
                ),
                const SizedBox(height: 10.0,),
                Text(
                  feelsLike,
                  style: infoStyle,
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}