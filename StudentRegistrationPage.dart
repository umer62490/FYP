import 'package:flutter/material.dart';
import 'student_profile_page.dart';

class StudentRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Registration'),
      ),
      backgroundColor: Color(0xFF104271),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(
              'assets/images/Grey Orange Triangle Modern Bus For Sale Instagram Story.png',
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 30),
            // Your registration form widgets
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
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: ' Cloud ID',
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 16),
            // Other form fields and button
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
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to the student profile page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudentProfilePage()),
                );
              },
              child: Text('Send Request'),
            ),
          ],
        ),
      ),
    );
  }
}
