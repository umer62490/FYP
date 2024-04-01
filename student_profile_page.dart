import 'package:flutter/material.dart';
import 'StudentProfile_aboutUs.dart';
import 'StudentProfile_contactUs.dart';
import 'StudentProfile_feedback.dart';

void main() {
  runApp(MaterialApp(
    home: StudentProfilePage(),
  ));
}

class StudentProfilePage extends StatelessWidget {
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrackPointsPage()),
                    );
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
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BusSchedulePage()),
                    );
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

class TrackPointsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track Points'),
      ),
      backgroundColor: Color(0xFF104271), // Background color set to Color(0xFF104271)
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: List.generate(20, (index) {
          return ElevatedButton(
            onPressed: () {
              // Implement button functionality
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Button background color
              minimumSize: MaterialStateProperty.all<Size>(Size(100, 40)), // Button size
            ),
            child: Text(
              'Point ${index + 1}',
              style: TextStyle(fontSize: 26),
            ),
          );
        }),
      ),
    );
  }
}

class BusSchedulePage extends StatelessWidget {
  final busRoutes = [
    "City Campus – Jama Cloth – Radio Pakistan – 7Day Hospital – Numaish – Gurumandir – Jamshed Road (No.3) – New Town – Askari Park – Mumtaz Manzil – NEDUET (Main Campus)",
    "Paposh Nagar – Nazimabad (No.7) – Board Office – Hydri – 2K Bus Stop – Sakhi Hassan – Shadman (No.2)– Namak Bank – Sohrab Goth – Gulshan Chowrangi – NEDUET (Main Campus)",
    "Nazimabad (Petrol Pump) – Inquiry Office – Golimar Chowrangi – Chuna Depu – Daak khana – Liaquatabad (No.10) – Karimabad – Ayesha Manzil – Mukka Chowk – Farzana Dawakhana – 13D More – NEDUET (Main Campus)",
    "Korangi (No.5) – Korangi (No.4) – Korangi (No.31/2) – Korangi (No.21/2) – Korangi (No.2) – Korangi (No.1, near Chakra Goth) – Nasir Jump – Korangi Crossing – Qayyumabad Chowragni – Akhtar Colony – Kala Pull – FTC Building – Nursery – Baloch Colony – Karsaz – NEDUET (Main Campus)",
    "4K Chowrangi – 2 Minute Chowrangi – 5C-4 (Bara Market) – Saleem Centre – U.P Mor – Nagan Chowrangi – Gulshan Chowrangi – NEDUET (Main Campus)",
    "Dawood Chowrangi – Landhi 89 – Babar Market – Landhi (No.5) – Landhi (No.6) – Korangi (No.5) – Khaddi Stop – Singer Chowrangi – Bagh-e-Korangi – Shah Faisal Police Station – Shama Shopping Centre – Natha Khan – Drig Road – Gulistan-e-Johar – NEDUET (Main Campus)",
    "Orangi (No.5) – Metro Cinema – Abdullah College – Ship Owner College – Qalandarya Chowk – Sakhi Hassan – Shadman (No.1) – Buffer Zone – Fazal Mill – Nipa – NEDUET (Main Campus)",
    "Punjab Chowrangi – KESC Office – Defence Mor – Akhtar Colony – Express Way – Iqra University – Mehmoodabad (No.6) – Baloch Colony Bridge – Nursery – Noorani Kabab – Shahed-e-Millat Road – LEJ Campus – Agha Khan Hospital – Daalmian – Millennium Mall – Laal Flat – NEDUET (Main Campus)",
    "Safari Park – Nipa – Moti Mehel – 16 No. Chowrangi – Water Pump – Gulberg Chowrangi – peoples Chowrangi – Sakhi Hassan Chowrangi – 2K-Stop – Five Star Chowrangi – Hydri Stop – Board Office – Nazimabad (No.7) – Nazimabad (Petrol Pump) – Liaquatabad (No.10) – Baloch Hotel – Hassan Squire – LEJ Campus – Bahadarabad Chowrangi – Noorani Kabab – Numaish Chowrangi – NED City Campus",
    "Five Star Chowrangi – Crown Bakery – Landi Kotal – Dental College – Peoples Chowrangi – D.C Office – Gulberg Chowrangi – Water Pump – 16-No.Chowrangi – Fazal Mill – NEDUET (Main Campus)",
    "Malir Hault – Kala Board – Laal Masjid – Malir Tanki – R.C.D Ground – Model Colony – Model Mor, (CNG Pump) – Malir Cantt – NEDUET (Main Campus)",
    "E-Complex – Steel Town Gate – National Highway – Qaidabad – Murghi Khana – Malir Hault – Model Colony – Cantt Gate (No.6) – Safoora Chowrangi – NEDUET (Main Campus)",
    "Ajmer Nagri – Bara Dari – Disco Mor – Muhammad Shah Kabrustan – Anda Mor – Qalandarya Chowk – Ship Owner – Five Star – Landi Kotal – Tahir Villa – NEDUET (Main Campus)",
    "Buffer Zone – Nagan Chowrangi – Shadman (No.2) – Shadman (No.1) – Sakhi Hassan – 2K Bus Stop – Five Star Chowrangi – K.D.A Chowrangi – Nazimabad (No.6) – Nazimabad (Petrol pump) – Liaquatabad (No.4) – Liaquatabad (No.10) – Ghareebabad – NEDUET (Main Campus)",
    "Saoodabad Chowrangi – Urdu Nagar – Naad-e-Ali – Jafar-e-Tayyar Society – Malir (No.15) – Malir Hault – Chota Gate – Natha Khan – Nipa – NEDUET (Main Campus)",
    "Lea Market – Lawrence Road – Garden – Lasbela – Teen Hatti – Jail Road – Hassan Squire – Urdu University – NEDUET (Main Campus)",
    "Shersha – Ghani Chowrangi – Habib Bank (Bridge Crossing) – Nazimabad (No.4) – Nazimabad, (Petrol Pump) – Liaquatabad (No.2) – Ghareebabad – Hassan Squire – NEDUET (Main Campus)",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus Schedule'),
      ),
      body: ListView.builder(
        itemCount: busRoutes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  busRoutes[index],
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

