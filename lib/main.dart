import 'package:flutter/material.dart';
import 'screens/driver_login.dart';
import 'screens/student_dashboard.dart';

void main() {
  runApp(BusManagementApp());
}

class BusManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bus Management App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.cyanAccent,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.cyanAccent,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.cyanAccent,
            foregroundColor: Colors.black,
          ),
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.cyanAccent),
          titleMedium: TextStyle(color: Colors.cyanAccent),
        ),
      ),
      home: HomeSelection(),
    );
  }
}

class HomeSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Tracksy',
                style: TextStyle(fontSize: 24, color: Colors.cyanAccent),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                child: Text('Driver Login'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => DriverLogin()),
                  );
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Student Dashboard'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => StudentDashboard()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
