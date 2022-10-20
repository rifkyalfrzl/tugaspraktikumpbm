import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeetype;
  final bool isSelected;
  final VoidCallback onTap;

  CoffeeType({
    required this.coffeetype,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: isSelected ? Container(
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: Color.fromARGB(255, 200, 140, 71)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
                child: Text(
              coffeetype,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                  ),
            )),
            )
        )
        : Container(
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: Color.fromARGB(255, 161, 160, 154),),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                        child: Text(
                      coffeetype,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          ),
            )),
          ),
        ),
      ),
    );
  }
}
