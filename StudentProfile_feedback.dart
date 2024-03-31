import 'package:flutter/material.dart';

class FeedbackForm extends StatefulWidget {
  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _feedback = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Feedback Form',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Feedback Form', style: TextStyle(color: Colors.black)),
              centerTitle: true,
            ),
          ],
        ),
      ),
      body: Container(
        color: Color(0xFF104271), // Set background color to blue
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name', // Heading for name field
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter your name',
                    labelStyle: TextStyle(color: Colors.black), // Set label color to black
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black), // Set underline color to black
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black), // Set focused underline color to black
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
                SizedBox(height: 16),
                Text(
                  'Email', // Heading for email field
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter your email',
                    labelStyle: TextStyle(color: Colors.black), // Set label color to black
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black), // Set underline color to black
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black), // Set focused underline color to black
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty || !value!.contains('@')) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                SizedBox(height: 16),
                Text(
                  'Feedback', // Heading for feedback field
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    labelText: 'Enter your feedback',
                    labelStyle: TextStyle(color: Colors.black), // Set label color to black
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black), // Set underline color to black
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black), // Set focused underline color to black
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please provide feedback';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _feedback = value!;
                  },
                ),
                SizedBox(height: 24),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState?.save();
                        // Submit feedback (you can implement this part)
                        // Typically, you would send feedback to a server or store it locally
                        // Reset form after submission
                        _formKey.currentState?.reset();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Feedback submitted successfully')),
                        );
                      }
                    },
                    child: Text('Submit Feedback'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered)) {
                            return Colors.black;
                          } else {
                            return Colors.blue;
                          } // Change button color on hover
                        },
                      ),
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

void main() {
  runApp(MaterialApp(
    home: FeedbackForm(),
  ));
}
