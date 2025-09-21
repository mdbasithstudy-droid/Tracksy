import 'package:flutter/material.dart';

class StudentRequest extends StatelessWidget {
  final TextEditingController boardingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Request'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: boardingController,
              decoration: InputDecoration(
                labelText: 'Enter Boarding Point',
                labelStyle: TextStyle(color: Colors.cyanAccent),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyanAccent),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add logic to notify driver
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Request Sent')),
                );
              },
              child: Text('Request'),
            ),
          ],
        ),
      ),
    );
  }
}
