import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Detail Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Menu4Page(),
    );
  }
}

class Menu4Page extends StatelessWidget {
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
              'Grilled Chicken Breast Noodles (333 g)',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),

            // Image
            Image.asset(
              'assets/noodle.png', // Replace with your image asset path
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
                Text('•  Yellow noodles (We used yellow noodles, so they are not clean. You can substitute with Moroheiya vegetable noodles.)\n•  Vegetable broth (like making chicken meatball noodles above)\n•  Chicken breast meat\n•  Reduced sodium seasonings\n•  Low-fat fresh milk ( Low Fat)\n•  Chili powder\n•  Lime juice'),
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
              '1.Marinate chicken breast with reduced-sodium seasoning and fresh milk. Set aside for half an hour. Then grill in a Teflon pan until cooked. \n2.Boil the noodles and vegetables. Arrange on a plate. Ladle in the vegetable soup. Followed by grilled chicken breast. Season with chili powder and lime.',
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
            Text('Kcal: 807'),
            Text('Fat: 18.0g'),
            Text('Carbs: 93.6.0g'),
            Text('Protein: 62.6g'),
          ],
        ),
      ),
    );
  }
}
