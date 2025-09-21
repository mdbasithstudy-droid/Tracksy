import 'package:flutter/material.dart';
import 'driver_requests.dart';

class DriverBusDetails extends StatefulWidget {
  @override
  State<DriverBusDetails> createState() => _DriverBusDetailsState();
}

class _DriverBusDetailsState extends State<DriverBusDetails> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _busController = TextEditingController();
  TextEditingController _routeController = TextEditingController();
  int seatsFilled = 0;
  int totalSeats = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Driver Bus Details', style: TextStyle(color: Colors.greenAccent)),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.redAccent, width: 3),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.redAccent.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Column(
                children: [
                  _buildTextField('Driver Name', _nameController),
                  SizedBox(height: 10),
                  _buildTextField('Bus Number', _busController),
                  SizedBox(height: 10),
                  _buildTextField('Route Name', _routeController),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      int busNum = int.tryParse(_busController.text) ?? 21;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => DriverRequests(busNumber: busNum)),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                    child: Text('Confirm', style: TextStyle(color: Colors.greenAccent)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      style: TextStyle(color: Colors.greenAccent),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.greenAccent),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent, width: 2),
        ),
      ),
    );
  }
}
