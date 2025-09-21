import 'package:flutter/material.dart';
import '../models/bus_data.dart';
import 'driver_requests.dart';

class DriverDashboard extends StatefulWidget {
  final int busIndex;
  DriverDashboard({required this.busIndex});

  @override
  _DriverDashboardState createState() => _DriverDashboardState();
}

class _DriverDashboardState extends State<DriverDashboard> {
  @override
  Widget build(BuildContext context) {
    final bus = BusData().buses[widget.busIndex];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Driver Dashboard')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Bus: ${bus.name}, Route: ${bus.route}', style: TextStyle(fontSize: 20, color: Colors.cyanAccent)),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Student Requests'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => DriverRequests()));
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text('+ Seat'),
                  onPressed: () { setState(() { BusData().incrementSeats(widget.busIndex); }); },
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  child: Text('- Seat'),
                  onPressed: () { setState(() { BusData().decrementSeats(widget.busIndex); }); },
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('Seats Available: ${bus.seats}', style: TextStyle(fontSize: 18, color: Colors.cyanAccent)),
          ],
        ),
      ),
    );
  }
}
