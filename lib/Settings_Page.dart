import 'package:flutter/material.dart';

void main() {
  runApp(SettingsPage());
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Container(
            width: 800, // Adjust width for web layout
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Text(
                  'LegalAidPro',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.lightBlue),
                ),
                SizedBox(height: 20),
                
                // Navigation
                Text(
                  'Settings',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Divider(),
                
                // Account Section
                Text('Account', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile Information'),
                  onTap: () {},
                ),
                Divider(),
                
                // Preferences Section
                Text('Preferences', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ListTile(
                  leading: Icon(Icons.brightness_6),
                  title: Text('Color Mode'),
                  trailing: DropdownButton<String>(
                    items: ['Light', 'Dark']
                        .map((mode) => DropdownMenuItem(value: mode, child: Text(mode)))
                        .toList(),
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.language),
                  title: Text('Language'),
                  trailing: DropdownButton<String>(
                    items: ['English', 'French', 'Spanish']
                        .map((lang) => DropdownMenuItem(value: lang, child: Text(lang)))
                        .toList(),
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text('Notifications'),
                  trailing: Switch(value: true, onChanged: (value) {}),
                ),
                Divider(),
                
                // Footer - Help & Support
                Text('Help & Support', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ListTile(
                  leading: Icon(Icons.help_center),
                  title: Text('Help Center', style: TextStyle(color: Colors.blue)),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
