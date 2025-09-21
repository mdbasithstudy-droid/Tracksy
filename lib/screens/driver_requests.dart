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
          final r = requests[index];
          return Card(
            color: Colors.grey[900],
            child: ListTile(
              title: Text(r.studentName, style: TextStyle(color: Colors.cyanAccent)),
              subtitle: Text('Boarding: ${r.boardingPoint}', style: TextStyle(color: Colors.cyanAccent)),
              trailing: r.accepted
                  ? Icon(Icons.check, color: Colors.cyanAccent)
                  : ElevatedButton(
                      child: Text('Accept'),
                      onPressed: () {
                        setState(() {
                          RequestData().acceptRequest(index);
                        });
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${r.studentName} Accepted!")));
                      },
                    ),
            ),
          );
        },
      ),
    );
  }
}
