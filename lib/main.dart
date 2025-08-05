import 'package:flutter/material.dart';

import 'package:medicare/SplashScreen.dart';
import 'onboarding_screen.dart';
import 'home_screen.dart';
import 'medicine_details_screen.dart';
import 'time_picker_screen.dart';
import 'package:medicare/add_medicine.dart';

void main() {
  runApp(MedicineReminderApp());
}

class MedicineReminderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medicine Reminder',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'Scada',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/home': (context) => HomeScreen(),
        '/add-medicine': (context) => AddMedicineScreen(),
        '/time-picker': (context) => TimePickerScreen(),
        '/medicine-details': (context) => MedicineDetailsScreen(),
      },
    );
  }
}