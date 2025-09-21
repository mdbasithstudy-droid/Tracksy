import 'package:flutter/material.dart';
import '../models/bus_data.dart';
import 'driver_dashboard.dart';

class DriverCredentials extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController busController = TextEditingController();
  final TextEditingController routeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Driver Credentials')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Driver Name',
                labelStyle: TextStyle(color: Colors.cyanAccent),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyanAccent),
                ),
              ),
              style: TextStyle(color: Colors.cyanAccent),
            ),
            SizedBox(height: 20),
            TextField(
              controller: busController,
              decoration: InputDecoration(
                labelText: 'Bus Number',
                labelStyle: TextStyle(color: Colors.cyanAccent),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyanAccent),
                ),
              ),
              style: TextStyle(color: Colors.cyanAccent),
            ),
            SizedBox(height: 20),
            TextField(
              controller: routeController,
              decoration: InputDecoration(
                labelText: 'Route Name',
                labelStyle: TextStyle(color: Colors.cyanAccent),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyanAccent),
                ),
              ),
              style: TextStyle(color: Colors.cyanAccent),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                int busNumber = int.tryParse(busController.text) ?? 0;
                BusData().addBus(nameController.text, routeController.text, busNumber);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => DriverDashboard(busIndex: BusData().buses.length - 1)),
                );
              },
              child: Text('Confirm'),
            ),
          ],
        ),
      ),
    );
  }
}
