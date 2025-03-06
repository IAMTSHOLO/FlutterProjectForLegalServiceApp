import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LegalAidPro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactPage(),
    );
  }
}

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  // User's contact information
  String name = 'John Doe';
  String email = 'johndoe@example.com';
  String phoneNumber = '+1234567890';
  String physicalAddress = '123 Main St, City, Country';

  // Edit flags to enable user to edit information
  bool isEditing = false;

  // Controllers to manage text fields
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize controllers with current values
    emailController.text = email;
    phoneController.text = phoneNumber;
    addressController.text = physicalAddress;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LegalAidPro',
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Navigation section (Contact heading)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Contact',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),

          // Body section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Icon and full name
                CircleAvatar(
                  child: Text(
                    name[0].toUpperCase(),
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  backgroundColor: Colors.blue,
                ),
                SizedBox(width: 10),
                Text(
                  name,
                  style: TextStyle(fontSize: 18),
                ),
                Spacer(),
                // Editing icon
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    setState(() {
                      isEditing = !isEditing;
                    });
                  },
                ),
              ],
            ),
          ),

          // Email, Phone, and Address - editable fields
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Email address
                Text(
                  'Email:',
                  style: TextStyle(fontSize: 16),
                ),
                isEditing
                    ? TextField(
                        controller: emailController,
                        decoration: InputDecoration(hintText: 'Enter your email'),
                      )
                    : Text(email),
                SizedBox(height: 16),

                // Phone number
                Text(
                  'Phone Number:',
                  style: TextStyle(fontSize: 16),
                ),
                isEditing
                    ? TextField(
                        controller: phoneController,
                        decoration:
                            InputDecoration(hintText: 'Enter your phone number'),
                      )
                    : Text(phoneNumber),
                SizedBox(height: 16),

                // Physical Address
                Text(
                  'Address:',
                  style: TextStyle(fontSize: 16),
                ),
                isEditing
                    ? TextField(
                        controller: addressController,
                        decoration:
                            InputDecoration(hintText: 'Enter your address'),
                      )
                    : Text(physicalAddress),
              ],
            ),
          ),
        ],
      ),

      // Footer section (Home icon)
      bottomNavigationBar: BottomAppBar(
        child: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            // Navigate back to the home page
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
