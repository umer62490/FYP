import 'package:flutter/material.dart';

class StudentProfile_aboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFF104271),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    'About CampusNav',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "CampusNav is a dedicated companion, serving as a seamless point-tracking bridge for students at Ned University, enhancing their academic journey.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 24),  // Increased spacing here
                Text(
                  'Our Mission',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "'CampusNav's mission is to simplify point tracking for Ned University students, offering a user-friendly, reliable, and innovative solution tailored to the dynamic university environment.'",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 24),  // Increased spacing here
                Text(
                  'Developed with Precision',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'CampusNav, crafted through meticulous planning and cutting-edge technology, passionately aims to facilitate student success with a commitment to a robust and secure platform.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 24),  // Increased spacing here
                Text(
                  'Meet the Team',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                _buildTeamMember('Muhammad Umar', 'Front-End developer also has an active role in authentication purpose', 'assets/images/umar_image.png'),
                _buildTeamMember('Shahmeer Razi Khan', 'Front-End developer', 'assets/images/shahmeer image.png'),
                _buildTeamMember('Muhammad Fahad', 'Backend-End developer with Device configuration', 'assets/images/fahad_image.png'),
                _buildTeamMember('Sadaqat Mustafa', 'Backend-End developer', 'assets/images/sadaqat_image.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTeamMember(String name, String role, String imageName) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(imageName),
          ),
          SizedBox(height: 14),
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Role: $role',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24),  // Increased spacing here
        ],
      ),
    );
  }
}