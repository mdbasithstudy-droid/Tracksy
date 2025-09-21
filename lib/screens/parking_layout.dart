import 'package:flutter/material.dart';

class ParkingLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Parking Layout')),
      body: Center(
        child: Image.asset('assets/parking.png'),
      ),
    );
  }
}
