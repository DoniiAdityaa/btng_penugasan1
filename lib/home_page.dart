import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "What do you want to watch?",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.white, width: 2),
                ),
              ),
              child: Text(
                'Popular',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(image: AssetImage('assets/images/movie1.png')),
                SizedBox(width: 10),
                Image(image: AssetImage('assets/images/movie2.png')),
              ],
            ),
            SizedBox(height: 16),

            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                  child: Text(
                    'Now Playing',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  'Upcoming',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(width: 16),
                Text(
                  'Top rated',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(image: AssetImage('assets/images/movie3.png')),
                SizedBox(width: 10),
                Image(image: AssetImage('assets/images/movie4.png')),
              ],
            ),
            SizedBox(height: 16),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: AssetImage('assets/images/movie5.png')),
                  SizedBox(width: 10),
                  Image(image: AssetImage('assets/images/movie6.png')),
                  SizedBox(width: 10),
                  Image(image: AssetImage('assets/images/movie7.png')),
                  SizedBox(width: 10),
                  Image(image: AssetImage('assets/images/movie5.png')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
