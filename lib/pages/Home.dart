import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/componant/bottombar.dart';
import 'package:flutter_application_1/pages/componant/globals.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Healthy Eating and Nutrition App', style: TextStyle(color: Colors.white)),
        automaticallyImplyLeading: false, // Remove back arrow
        backgroundColor: Colors.green[700], // Set app bar background color
      ),
      body: Container(
        decoration: BoxDecoration(
          // color: Colors.green[100], // Set background color of the body
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daily Intake',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[800], // Set text color
                  ),
                ),
                SizedBox(height: 20), // Add spacing between the title and image
                Center(
                  child: Image.asset(
                    'assets/dailyintake.png',
                    height: 250,
                    width: 250,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 20), // Add spacing between the image and nutrient columns
                NutrientColumn(
                  nutrient: 'Protein',
                  currentIntake: globalcurrentIntakeProtein ?? 0,
                  goalIntake: 100,
                  kcal: 200,
                  showButtons: true,
                  onUpdateIntake: (intake) {
                    globalcurrentIntakeProtein = intake;
                  },
                ),
                SizedBox(height: 20),
                NutrientColumn(
                  nutrient: 'Fat',
                  currentIntake: globalcurrentIntakeFat ?? 0,
                  goalIntake: 50,
                  kcal: 150,
                  showButtons: true,
                  onUpdateIntake: (intake) {
                    globalcurrentIntakeFat = intake;
                  },
                ),
                SizedBox(height: 20),
                NutrientColumn(
                  nutrient: 'Carbs',
                  currentIntake: globalcurrentIntakeCarbs ?? 0,
                  goalIntake: 120,
                  kcal: 300,
                  showButtons: true,
                  onUpdateIntake: (intake) {
                    globalcurrentIntakeCarbs = intake;
                  },
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(currentIndex: 0),
    );
  }
}

class NutrientColumn extends StatefulWidget {
  final String nutrient;
  final double currentIntake;
  final double goalIntake;
  final double kcal;
  final bool showButtons;
  final void Function(double) onUpdateIntake;

  const NutrientColumn({
    required this.nutrient,
    required this.currentIntake,
    required this.goalIntake,
    required this.kcal,
    required this.showButtons,
    required this.onUpdateIntake,
  });

  @override
  _NutrientColumnState createState() => _NutrientColumnState();
}

class _NutrientColumnState extends State<NutrientColumn> {
  late double _currentIntake;

  @override
  void initState() {
    super.initState();
    _currentIntake = widget.currentIntake;
  }

  @override
  Widget build(BuildContext context) {
    double progress = _currentIntake / widget.goalIntake;

    return Card(
      color: Colors.green[50], // Set card background color
      elevation: 4, // Add elevation for a slight shadow effect
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.nutrient,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Current: ${_currentIntake.toString()} g',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Goal: ${widget.goalIntake.toString()} g',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '${widget.kcal.toString()} kcal',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.green[200],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green[700]!),
              minHeight: 10,
            ),
            if (widget.showButtons)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NutrientButton(
                    icon: Icons.remove,
                    onPressed: () {
                      setState(() {
                        if (_currentIntake > 0) {
                          _currentIntake--;
                          widget.onUpdateIntake(_currentIntake);
                        }
                      });
                    },
                  ),
                  NutrientButton(
                    icon: Icons.add,
                    onPressed: () {
                      setState(() {
                        _currentIntake++;
                        widget.onUpdateIntake(_currentIntake);
                      });
                    },
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class NutrientButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const NutrientButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: Colors.black, // Set icon color
      ),
    );
  }
}
