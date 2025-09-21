import 'package:flutter/material.dart';
import '../models/bus_data.dart';
import 'driver_requests.dart';

class DriverDashboard extends StatefulWidget {
  final String driverName;
  final String busNumber;
  final String route;

  DriverDashboard({
    required this.driverName,
    required this.busNumber,
    required this.route,
  });

  @override
  _DriverDashboardState createState() => _DriverDashboardState();
}

class _DriverDashboardState extends State<DriverDashboard> {
  int seats = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Driver Dashboard')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Driver: ${widget.driverName} | Bus.No: ${widget.busNumber} | Route: ${widget.route}',
              style: TextStyle(fontSize: 20, color: Colors.cyanAccent),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Student Requests'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => DriverRequests()),
                );
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text('+ Seat'),
                  onPressed: () {
                    setState(() {
                      seats++;
                      BusData().incrementSeats(widget.busNumber);
                    });
                  },
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  child: Text('- Seat'),
                  onPressed: () {
                    setState(() {
                      if (seats > 0) seats--;
                      BusData().decrementSeats(widget.busNumber);
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Seats: $seats',
              style: TextStyle(fontSize: 24, color: Colors.cyanAccent, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
