import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Detail Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Menu2Page(),
    );
  }
}

class Menu2Page extends StatelessWidget {
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
              'Grilled Mushroom Salad (260 g)',
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
                Text('•  Thinly sliced eryngii mushrooms\n•  Salad vegetables as desired\n•  Sesame oil and Japanese soy sauce salad dressing'),
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
              '1. Grill the eryngii mushrooms in a Teflon pan until cooked. Arrange on a plate and serve with salad of your choice.\n2. Drizzle with sesame oil and Japanese soy sauce dressing.',
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
            Text('Kcal: 154'),
            Text('Fat: 11.5g'),
            Text('Carbs: 10.0g'),
            Text('Protein: 5.5g'),
          ],
        ),
      ),
    );
  }
}
