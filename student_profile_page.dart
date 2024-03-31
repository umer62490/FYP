import 'package:flutter/material.dart';
import 'StudentProfile_aboutUs.dart';
import 'StudentProfile_contactUs.dart';
import 'StudentProfile_feedback.dart';

class StudentProfilePage extends StatefulWidget {
  @override
  _StudentProfilePageState createState() => _StudentProfilePageState();
}

class _StudentProfilePageState extends State<StudentProfilePage> {
  String name = 'John Doe';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Profile'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.yellow,
            ),
            onPressed: () {
              // Implement notification functionality
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileSettingsPage()),
                  );
                },
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Icon(
                      Icons.account_circle,
                      size: 70,
                      color: Colors.yellow,
                    ),
                    SizedBox(height: 10),
                    Text(
                      name,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.green,
              ),
              title: Text('Home'),
              onTap: () {
                // Navigate to home page
                // You can implement this part based on your navigation structure.
              },
            ),
            ListTile(
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue,
              ),
              title: Text('Contact Us'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudentProfile_contactUs()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.orange,
              ),
              title: Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudentProfile_aboutUs()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.feedback,
                color: Colors.purple,
              ),
              title: Text('Feedback'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FeedbackForm()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Color(0xFF104271), // Background color set to blue
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement button functionality
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Button background color
                      minimumSize: MaterialStateProperty.all<Size>(Size(200, 60)), // Button size
                    ),
                    child: Text(
                      'Track Bus',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement button functionality
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Button background color
                      minimumSize: MaterialStateProperty.all<Size>(Size(200, 60)), // Button size
                    ),
                    child: Text(
                      'Bus Schedule',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Implement logic for changing profile photo
              },
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.camera_alt,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Implement logic for updating user details
              },
              child: Text(
                'Update Details',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}