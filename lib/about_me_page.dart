import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Mr. Petu'),
        centerTitle: true,
        backgroundColor: Colors.blue, // Example color, change as needed
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0), // Add some padding around the content
        children: <Widget>[
          SizedBox(height: 20), // Provides some spacing between the app bar and the content
          CircleAvatar(
            radius: 180, // Size of the circle avatar
            backgroundImage: AssetImage('assets/app_logo.png'), // Replace with your app's logo or profile picture
          ),
          SizedBox(height: 20), // Spacing after the avatar
          Card(
            color: Colors.grey, // Dark card background
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Petu 777 Love Pets',
                    style: TextStyle(
                      fontSize: 20, // Title text size
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Title text color
                    ),
                  ),
                  SizedBox(height: 10), // Spacing between title and description
                  Text(
                    'Mr. Petu is good friend of all pet',
                    style: TextStyle(
                      fontSize: 16, // Description text size
                      color: Colors.white, // Description text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text('Name : Mr. Petu', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          ListTile(
            title: Text('Age : 1year 22 days', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          ListTile(
            title: Text('Girlfriend : 2  -  Playboy', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          ListTile(
            title: Text('Country : US', style: TextStyle(fontWeight: FontWeight.bold)),
          ),

          ListTile(
            title: Text('Current version', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('v1.1'), // Replace with your app's current version
          ),
        ],
      ),
    );
  }
}
