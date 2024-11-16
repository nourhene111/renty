import 'package:flutter/material.dart';
import 'package:flutter_application_2/admin/admin_home_page.dart';

void main() {
  runApp(CarRentalApp());
}

class CarRentalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Suppression de la bannière de débogage
      title: 'Car Rental Admin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AdminHomePage(),
    );
  }
}
