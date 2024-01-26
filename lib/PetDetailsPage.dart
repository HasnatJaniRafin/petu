import 'package:flutter/material.dart';
import 'PetModel.dart'; // Ensure this class is correctly defined with 'name' and 'imagePath'

class PetDetailsPage extends StatelessWidget {
  final Pet pet;

  PetDetailsPage({required this.pet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pet.name), // Displays the name of the pet in the app bar
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Image.asset(pet.imagePath, fit: BoxFit.cover), // Displays the pet's image
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'This is ${pet.name}. Say Hi - Pets can bring joy, companionship, and a sense of responsibility to our lives. They come in all shapes and sizes, from dogs and cats to birds and reptiles. Taking care of a pet requires commitment and patience, but the rewards of their unconditional love and loyalty are priceless.', // Placeholder text for the pet's description
              style: TextStyle(fontSize: 24), // Style for the description text
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
