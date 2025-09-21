import 'package:flutter/material.dart';
import '../models/bus_data.dart';

class TrackBusesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buses = BusData().buses;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Tracked Buses')),
      body: ListView.builder(
        itemCount: buses.length,
        itemBuilder: (context, index) {
          final bus = buses[index];
          return Card(
            color: Colors.grey[900],
            child: ListTile(
              title: Text(
                'Bus No: ${bus.busNumber} | Driver: ${bus.name}',
                style: TextStyle(color: Colors.cyanAccent),
              ),
              subtitle: Text(
                'Route: ${bus.route} | Seats: ${bus.seats}',
                style: TextStyle(color: Colors.cyanAccent),
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  // Replace with real location logic later
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Locate pressed for Bus ${bus.busNumber}')),
                  );
                },
                child: Text('Locate'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyanAccent,
                  foregroundColor: Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
