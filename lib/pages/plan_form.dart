import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/componant/globals.dart';

class PlanForm extends StatefulWidget {
  const PlanForm({Key? key}) : super(key: key);

  @override
  _PlanFormState createState() => _PlanFormState();
}

class _PlanFormState extends State<PlanForm>
{
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  String? _selectedGender;

  @override
  void initState() {
    super.initState();
    // Set default values for weight and height if available
    weightController.text = globalweight ?? '';
    heightController.text = globalheight ?? '';
    _selectedGender = globalselectedGender;
  }

  @override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Enter your weight:',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(height: 12),
        TextFormField(
          controller: weightController,
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          decoration: InputDecoration(
            labelText: 'Weight (in kg)',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 24),
        Text(
          'Enter your height:',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(height: 12),
        TextFormField(
          controller: heightController,
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          decoration: InputDecoration(
            labelText: 'Height (in cm)',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 24),
        Text(
          'Select your gender:',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(height: 12),
        DropdownButtonFormField<String>(
          value: _selectedGender,
          onChanged: (value) {
            setState(() {
              _selectedGender = value;
            });
          },
          items: ['Male', 'Female', 'Other'].map((gender) {
            return DropdownMenuItem<String>(
              value: gender,
              child: Text(
                gender,
                style: TextStyle(fontSize: 16),
              ),
            );
          }).toList(),
          decoration: InputDecoration(
            labelText: 'Select gender',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 24),
        Center(
          child: ElevatedButton(
            onPressed: () {
              // Add functionality for confirming the plan
              globalweight = weightController.text;
              globalheight = heightController.text;
              globalselectedGender = _selectedGender;
              print('Plan confirmed');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'Confirm',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ],
    ),
  );
}
}

