import 'package:flutter/material.dart';

class StudentProfile_contactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFF104271), // Set the background color of the page
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Contact Us',
                  style: TextStyle(
                    color: Colors.white, // Change text color to white
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Please fill this form in a decent manner.',
                  style: TextStyle(
                    color: Colors.white, // Change text color to white
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 16),
                _buildContactForm(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContactForm(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Your Name',
              labelStyle: TextStyle(color: Colors.white), // Change label text color to white
            ),
            style: TextStyle(color: Colors.white), // Change input text color to white
          ),
          SizedBox(height: 12),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Department',
              labelStyle: TextStyle(color: Colors.white), // Change label text color to white
            ),
            style: TextStyle(color: Colors.white), // Change input text color to white
          ),
          SizedBox(height: 12),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Year',
              labelStyle: TextStyle(color: Colors.white), // Change label text color to white
            ),
            style: TextStyle(color: Colors.white), // Change input text color to white
          ),
          SizedBox(height: 12),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Roll Number',
              labelStyle: TextStyle(color: Colors.white), // Change label text color to white
            ),
            style: TextStyle(color: Colors.white), // Change input text color to white
          ),
          SizedBox(height: 12),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Contact Number',
              labelStyle: TextStyle(color: Colors.white), // Change label text color to white
            ),
            style: TextStyle(color: Colors.white), // Change input text color to white
          ),
          SizedBox(height: 12),
          TextFormField(
            maxLines: 4,
            decoration: InputDecoration(
              labelText: 'Message',
              labelStyle: TextStyle(color: Colors.white), // Change label text color to white
            ),
            style: TextStyle(color: Colors.white), // Change input text color to white
          ),
          SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlue, // Set the background color of the button to light blue
            ),
            onPressed: () {
              // Implement submission logic
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
