import 'package:flutter/material.dart';
import 'student_request.dart'; // screen version
import 'student_tracker.dart';
import 'parking_layout.dart';
import '../models/bus_data.dart' as busData; // alias the model import

class StudentDashboard extends StatelessWidget {
  final int busesRunning = 5; // Example data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Dashboard'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 100,
              color: Colors.black,
              child: Center(
                child: Text(
                  'Buses Running: $busesRunning',
                  style: TextStyle(fontSize: 22, color: Colors.cyanAccent),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => StudentRequest()), // screen
                );
              },
              child: Text('Request'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => StudentTracker()),
                );
              },
              child: Text('Tracker'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ParkingLayout()),
                );
              },
              child: Text('Parking Layout'),
            ),
          ],
        ),
      ),
    );
  }
}
