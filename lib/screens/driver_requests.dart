import 'package:flutter/material.dart';
import '../models/bus_data.dart';

class DriverRequests extends StatefulWidget {
  @override
  _DriverRequestsState createState() => _DriverRequestsState();
}

class _DriverRequestsState extends State<DriverRequests> {
  @override
  Widget build(BuildContext context) {
    final requests = RequestData().requests;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Student Requests')),
      body: ListView.builder(
        itemCount: requests.length,
        itemBuilder: (context, index) {
          final request = requests[index];
          return Card(
            color: Colors.grey[900],
            child: ListTile(
              title: Text(
                request.studentName,
                style: TextStyle(color: Colors.cyanAccent),
              ),
              subtitle: Text(
                'Boarding: ${request.boardingPoint}',
                style: TextStyle(color: Colors.cyanAccent),
              ),
              trailing: request.accepted
                  ? Icon(Icons.check, color: Colors.green)
                  : ElevatedButton(
                      onPressed: () {
                        setState(() {
                          RequestData().acceptRequest(index);
                        });
                      },
                      child: Text('Accept'),
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
