import 'package:flutter/material.dart';
import 'PetGrid.dart'; // Import PetGrid class

// ... (other imports)
import 'all_pets_page.dart'; // Import AllPetsPage class
import 'about_me_page.dart'; // Import AboutMePage class

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    PetGrid(),
    AllPetsPage(), // You'll need to create this class
    AboutMePage(), // You'll need to create this class
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Petu'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Pets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About Me',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
