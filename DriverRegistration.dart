// AdminRegistrationPage.dart

import 'package:flutter/material.dart';

class DriverRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Driver Registration'),
      ),
      backgroundColor: Color(0xFF104271),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animated university bus photo at the top
            Image.asset(
              'assets/images/Grey Orange Triangle Modern Bus For Sale Instagram Story.png',
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 15),
            // Replace the below widgets with your admin registration form fields
            TextField(
              decoration: InputDecoration(
                labelText: ' Username',
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Cloud ID',
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                labelText: ' Password',
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                labelText: 'Contact Information',
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                labelText: ' License Information',
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement admin registration logic
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
              child: Text('Send Request'),
            ),
          ],
        ),
      ),
    );
  }
}
