import 'package:flutter/material.dart';

class LearnMoreCardWidget extends StatelessWidget {
  const LearnMoreCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width - 40,
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                color: Color(0xFF4778FB),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 0,
            child: Image(
              image: AssetImage('assets/images/doctor 2.png'),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Here when you need',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text('us most',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Positioned(
              bottom: 30,
              left: 20,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {},
                child: Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                  child: Text(
                    'Learn More',
                    style: TextStyle(
                        color: Color(0xFF4778FB),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}