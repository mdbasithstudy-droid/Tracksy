import 'package:bus_management_app/models/bus_data.dart';
import 'package:flutter/material.dart';
import 'tracker_bus.dart';
import 'student_request.dart';

class StudentDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final busesCount = BusData().buses.length; // dynamic count

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Student Dashboard')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // Number of running buses
            Text(
              'Running Buses: $busesCount',
              style: TextStyle(fontSize: 20, color: Colors.cyanAccent),
            ),
            SizedBox(height: 20),

            // Buttons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => StudentRequestsPage()));
                  },
                  child: Text('Request'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyanAccent,
                    foregroundColor: Colors.black,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => TrackBusesPage()));
                  },
                  child: Text('Track'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyanAccent,
                    foregroundColor: Colors.black,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ParkingLayoutPage()));
                  },
                  child: Text('Parking Layout'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyanAccent,
                    foregroundColor: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ------------------ Parking Layout Page with Image ------------------
class ParkingLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Parking Layout'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            'assets/parking_layout.png', // <-- put your image here
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
