import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Detail Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetailPage(),
    );
  }
}

class DetailPage extends StatelessWidget {
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
              'Grilled Chicken with Jaew Sauce',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),

            // Image
            Image.asset(
              'assets/chicken.jpg', // Replace with your image asset path
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
                Text('Chicken breast with skin peeled'),
                Text(
                    'Fish sauce, Light soy sauce, Oyster sauce, Low fat fresh milk'),
                Text('Cayenne pepper, Roasted rice, Lemon juice'),
                Text('Coconut sugar, Chopped spring onions and coriander'),
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
              '1. Use a fork to prick the chicken breast all over. Marinate with fish sauce, soy sauce, reduced-sodium oyster sauce, and fresh milk. Leave to marinate for about half an hour. Then grill it in a Teflon pan until cooked.\n'
              '2. Make the jaew dipping sauce. By mixing ground chili, roasted rice, lime juice, and reduced-sodium fish sauce. coconut sugar and chopped spring onions and cilantro, season as desired, serve with vegetables of your choice.',
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
            Text('Kcal: 350'),
            Text('Fat: 15g'),
            Text('Carbs: 20g'),
            Text('Protein: 30g'),
          ],
        ),
      ),
    );
  }
}
