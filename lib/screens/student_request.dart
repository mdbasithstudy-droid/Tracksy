import 'package:flutter/material.dart';
import '../models/bus_data.dart';

class StudentRequestsPage extends StatelessWidget {
  final TextEditingController boardingController = TextEditingController();
  final TextEditingController nameController = TextEditingController(); // student name

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Student Request'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Student Name',
                labelStyle: TextStyle(color: Colors.cyanAccent),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyanAccent),
                ),
              ),
              style: TextStyle(color: Colors.cyanAccent),
            ),
            SizedBox(height: 20),
            TextField(
              controller: boardingController,
              decoration: InputDecoration(
                labelText: 'Boarding Point',
                labelStyle: TextStyle(color: Colors.cyanAccent),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyanAccent),
                ),
              ),
              style: TextStyle(color: Colors.cyanAccent),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (nameController.text.isEmpty || boardingController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please enter all details')),
                  );
                  return;
                }

                // Add the request globally
                RequestData().addRequest(StudentRequest(
                  studentName: nameController.text,
                  boardingPoint: boardingController.text,
                ));

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Request Sent')),
                );

                nameController.clear();
                boardingController.clear();
              },
              child: Text('Request'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyanAccent,
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
