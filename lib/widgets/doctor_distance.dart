import 'package:flutter/material.dart';
import 'package:med_app/screens/profile_screen.dart';

class DoctorLocation extends StatelessWidget {

  final double distance;
  final int imageNumber;
  final String doctorName;
  final String heroTag;

  DoctorLocation({required this.distance, required this.imageNumber, required this.doctorName, required this.heroTag});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, ProfileScreen.id),
      child: Container(
        margin: EdgeInsets.all(10),
        width: 200,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFFC6D5FB), Color(0xFFA4BAF8)],
              begin: Alignment.topLeft),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Hero(
              tag: heroTag,
              child: Container(
                child: Image(
                  height: 140,
                  image: AssetImage('assets/images/doctor $imageNumber.png'),
                ),
              ),
            ),
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(doctorName,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF353D45))),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.location_pin, size: 15,),
                        SizedBox(width: 5,),
                        Text('$distance',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF353D45))),
                        SizedBox(width: 5,),
                        Text(
                          'km',
                          style:
                          TextStyle(color: Color(0xFF939BAD), fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}