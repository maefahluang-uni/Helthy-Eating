import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/componant/bottombar.dart';
import 'package:flutter_application_1/pages/plan_form.dart';

class PlanPage extends StatelessWidget {
  const PlanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plan Page', style: TextStyle(color: Colors.white)),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green[700],
      ),
      body: SingleChildScrollView(child: PlanForm()),
      bottomNavigationBar: BottomBar(currentIndex: 2),
    );
  }
}
