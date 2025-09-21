import 'package:flutter/material.dart';
import '../models/bus_data.dart';

class StudentTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buses = BusData().buses;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Tracker')),
      body: ListView.builder(
        itemCount: buses.length,
        itemBuilder: (context, index) {
          final bus = buses[index];
          return Card(
            color: Colors.grey[900],
            child: ListTile(
              title: Text(bus.name, style: TextStyle(color: Colors.cyanAccent)),
              subtitle: Text('Route: ${bus.route}, Seats: ${bus.seats}', style: TextStyle(color: Colors.cyanAccent)),
              trailing: ElevatedButton(
                child: Text('Locate'),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Bus ${bus.name} is on route ${bus.route}'),
                  ));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
