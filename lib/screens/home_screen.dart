import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:med_app/widgets/doctor_distance.dart';
import 'package:med_app/widgets/learn_more_card_widget.dart';
import 'package:med_app/widgets/specialist_widget.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F6),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Stay Healthy!',
                        style:
                            TextStyle(color: Color(0xFF939BAD), fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Kelvin Hart',
                        style: TextStyle(
                            color: Color(0xFF353D45),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
            LearnMoreCardWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: CupertinoSearchTextField(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Our Specialist',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SpecialistWidget(
                    imageNumber: 1,
                    imageName: 'Optician',
                  ),
                  SpecialistWidget(imageNumber: 4, imageName: 'Nephrologists'),
                  SpecialistWidget(
                    imageNumber: 5,
                    imageName: 'Neurologist',
                  ),
                  SpecialistWidget(imageNumber: 6, imageName: 'Cardiologist'),
                  SpecialistWidget(imageNumber: 7, imageName: 'Nurse')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Popular Doctors',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorLocation(distance: 3.2, doctorName: 'Dr Ben Carson', imageNumber: 2, heroTag: 'Ben',),
                  DoctorLocation(distance: 5.2, imageNumber: 3, doctorName: 'Dr Sam Hart', heroTag: 'Sam',),
                  DoctorLocation(distance: 1.5, imageNumber: 4, doctorName: 'Dr Kelsi Brown', heroTag: 'Brown',),
                  DoctorLocation(distance: 7.8, imageNumber: 5, doctorName: 'Dr Mary Johnson', heroTag: 'Mary',)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
