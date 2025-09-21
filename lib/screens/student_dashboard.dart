import 'package:bus_management_app/screens/student_request.dart';
import 'package:bus_management_app/screens/tracker_bus.dart';
import 'package:flutter/material.dart';
import '../models/bus_data.dart';
import 'tracker_bus.dart';
import 'student_request.dart'; // your request page

class StudentDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int busesRunning = BusData().buses.length; // Count of buses logged in

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Student Dashboard')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Number of buses running
            Card(
              color: Colors.grey[900],
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Buses Running: $busesRunning',
                  style: TextStyle(
                    color: Colors.cyanAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Track button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => TrackBusesPage()),
                );
              },
              child: Text('Track Buses'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),

            // Request button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => StudentRequestsPage()),
                );
              },
              child: Text('Send Request'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
