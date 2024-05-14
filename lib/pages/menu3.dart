import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Detail Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Menu3Page(),
    );
  }
}

class Menu3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'Grilled Tilapia (150 g)',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),

            // Image
            Image.asset(
              'assets/mushroomsalad.png', // Replace with your image asset path
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),

            // Ingredients
            Text(
              'Ingredients:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            // List of ingredients
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('•  Grilled Tilapia\n•  Vegetables as desired\n•  Birds eye chilli\n•  garlic\n•  Lemon juice\n•  Fish sauce (low sodium formula)\n•  Coconut sugar'),
                // Add more ingredients as needed
              ],
            ),
            SizedBox(height: 16.0),

            // Details about food
            Text(
              'How To Cook:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '1. Carve the grilled tilapia, removing only the meat.\n2. Make the seafood dipping sauce. By pounding birds eye chilli with garlic. Season with lemon. Reduced sodium fish sauce and a little coconut sugar, put in a bowl and serve with the carved tilapia meat. and fresh vegetables as desired',
              style: TextStyle(fontSize: 16),
            ),

            // Nutritional Information
            SizedBox(height: 16.0),
            Text(
              'Nutritional Information:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text('Kcal: 144'),
            Text('Fat: 2.6g'),
            Text('Carbs: 0.0g'),
            Text('Protein: 30.1g'),
          ],
        ),
      ),
    );
  }
}
