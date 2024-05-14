import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/componant/bottombar.dart';

class SuggestMealPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suggest Meal', style: TextStyle(color: Colors.white)),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green[700], // Set app bar background color
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Random picture of food in the middle
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle navigation
                        Navigator.pushNamed(context, '/menu4');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/noodle.png'), // Replace with your image asset path
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 300.0,
                        width: double.infinity,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Grilled Chicken Breast Noodles',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.green[800], // Set text color
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            // Three more pictures (left, middle, right)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/suggesttodetail');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/chicken.jpg'), // Replace with your image asset path
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 150.0,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'GrilChicken',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.green[800], // Set text color
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Handle navigation
                          Navigator.pushNamed(context, '/menu2');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/mushroomsalad.png'), // Replace with your image asset path
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 150.0,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Mushroom',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.green[800], // Set text color
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Handle navigation
                          Navigator.pushNamed(context, '/menu3');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/fish.png'), // Replace with your image asset path
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 150.0,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Grilled Tilapia',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.green[800], // Set text color
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(currentIndex: 1),
    );
  }
}
