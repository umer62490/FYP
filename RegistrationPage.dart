// RegistrationPage.dart

import 'package:flutter/material.dart';
import 'AdminRegistration.dart';
import 'StudentRegistrationPage.dart';
import 'DriverRegistration.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      backgroundColor: Color(0xFF104271),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Animated university bus photo at the top
              Image.asset(
                'assets/images/Grey Orange Triangle Modern Bus For Sale Instagram Story.png',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StudentRegistrationPage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return states.contains(MaterialState.hovered)
                          ? Colors.black
                          : Colors.blue;
                    },
                  ),
                ),
                child: Text('Student Registration'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdminRegistrationPage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return states.contains(MaterialState.hovered)
                          ? Colors.black
                          : Colors.blue;
                    },
                  ),
                ),
                child: Text('Admin Registration'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DriverRegistrationPage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return states.contains(MaterialState.hovered)
                          ? Colors.black
                          : Colors.blue;
                    },
                  ),
                ),
                child: Text('Driver Registration'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
