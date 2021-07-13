import 'package:flutter/material.dart';

class SpecialistWidget extends StatelessWidget {
  final int imageNumber;
  final String imageName;

  SpecialistWidget({required this.imageNumber, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage('assets/icons/Asset $imageNumber.png'),
          ),
          Text(
            imageName,
            style: TextStyle(
                color: Color(0xFF939BAD),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}