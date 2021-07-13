import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const String id = 'profile_screen';
  final String tagId;

  ProfileScreen({required this.tagId})


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB6D0F4),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Stack(
                children: [
                  Positioned(
                      top: 50,
                      left: 20,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white),
                        ),
                        child: Icon(
                          Icons.keyboard_return_rounded,
                          color: Colors.black,
                        ),
                        onPressed: () => Navigator.pop(context),
                      )),
                  Positioned(
                    bottom: 0,
                    right: MediaQuery.of(context).size.width / 3.5,
                    child: Hero(
                      tag: tagId,
                      child: Container(
                        child: Image(
                          image: AssetImage('assets/images/doctor 2.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr Ben Carson',
                      style: TextStyle(
                          color: Color(0xFF353D45),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Neurologist',
                      style: TextStyle(color: Color(0xFF939BAD), fontSize: 20),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'About',
                      style: TextStyle(
                          color: Color(0xFF353D45),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Dr Ben Carson is a well respected Neurologist',
                      style: TextStyle(color: Color(0xFF939BAD), fontSize: 15),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Location',
                      style: TextStyle(
                          color: Color(0xFF353D45),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF4778FB)),
                      ),
                      onPressed: () {},
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        child: Center(
                          child: Text(
                            'Make an Appointment',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
