import 'package:flutter/material.dart';
import 'PetModel.dart'; // Import PetModel class
import 'PetDetailsPage.dart'; // Import PetDetailsPage class

class PetGrid extends StatelessWidget {
  final List<Pet> pets = [
    // ... (Your existing pet objects)
    Pet(name: 'Buddy', imagePath: 'assets/1.png'),
    Pet(name: 'Luddo', imagePath: 'assets/2.png'),
    Pet(name: 'Fifo', imagePath: 'assets/3.png'),
    Pet(name: 'Lulu', imagePath: 'assets/4.png'),
    Pet(name: 'Josa', imagePath: 'assets/5.png'),
    Pet(name: 'Fafi', imagePath: 'assets/6.png'),
    Pet(name: 'KuKa', imagePath: 'assets/7.png'),
    Pet(name: 'Ransia', imagePath: 'assets/8.png'),
    Pet(name: 'Wissa', imagePath: 'assets/9.png'),
    Pet(name: 'Suku', imagePath: 'assets/10.png'),
    Pet(name: 'Vosko', imagePath: 'assets/11.png'),
    Pet(name: 'Fanika', imagePath: 'assets/12.png'),
    Pet(name: 'Ania', imagePath: 'assets/13.png'),
    Pet(name: 'Pusu', imagePath: 'assets/14.png'),
    Pet(name: 'Waskia', imagePath: 'assets/15.png'),
    Pet(name: 'Qiapo', imagePath: 'assets/16.png'),
    Pet(name: 'xixuka', imagePath: 'assets/17.png'),
    Pet(name: 'BoBo Pu', imagePath: 'assets/18.png'),
    Pet(name: 'Alioa', imagePath: 'assets/19.png'),
    Pet(name: 'Liooap', imagePath: 'assets/20.png'),
    Pet(name: 'Xuxu ku', imagePath: 'assets/21.png'),
    Pet(name: 'asew', imagePath: 'assets/22.png'),
    Pet(name: 'pwue', imagePath: 'assets/23.png'),
    Pet(name: 'weae', imagePath: 'assets/24.png'),
    Pet(name: 'sewe', imagePath: 'assets/25.png'),
    Pet(name: 'ferws', imagePath: 'assets/26.png'),
    Pet(name: 'aewwsd', imagePath: 'assets/27.png'),
    Pet(name: 'xeezde', imagePath: 'assets/28.png'),
    Pet(name: 'rdcee', imagePath: 'assets/29.png'),
    Pet(name: 'cdrfers', imagePath: 'assets/30.png'),
    Pet(name: 'verdf', imagePath: 'assets/31.png'),
    Pet(name: 'srsdsd', imagePath: 'assets/32.png'),
    Pet(name: 'frxfs', imagePath: 'assets/33.png'),
    Pet(name: 'psod', imagePath: 'assets/14.png'),
    Pet(name: 'ieu', imagePath: 'assets/21.png'),
    Pet(name: 'cjdu', imagePath: 'assets/36.png'),
    Pet(name: 'msoeu', imagePath: 'assets/37.png'),
    Pet(name: 'eoq', imagePath: 'assets/38.png'),
    Pet(name: 'cex', imagePath: 'assets/39.png'),
    Pet(name: 'ttde', imagePath: 'assets/40.png'),
    Pet(name: 'derx', imagePath: 'assets/41.png'),
    Pet(name: 'cdefx', imagePath: 'assets/42.png'),
    Pet(name: 'defd', imagePath: 'assets/43.png'),
    Pet(name: 'orujd', imagePath: 'assets/44.png'),
    Pet(name: 'cfec', imagePath: 'assets/45.png'),
    Pet(name: 'cawqw', imagePath: 'assets/16.png'),
    Pet(name: 'mzsue', imagePath: 'assets/47.png'),
    Pet(name: 'cnhyr', imagePath: 'assets/48.png'),
    Pet(name: 'cjiwa', imagePath: 'assets/49.png'),
    Pet(name: 'wkeuxnd', imagePath: 'assets/50.png'),
    Pet(name: 'cndf', imagePath: 'assets/51.png'),
    Pet(name: 'puqj', imagePath: 'assets/52.png'),
    Pet(name: 'wikasj', imagePath: 'assets/53.png'),
    Pet(name: 'mzjsue', imagePath: 'assets/54.png'),
    Pet(name: ',zdjsew', imagePath: 'assets/12.png'),
    Pet(name: 'ses', imagePath: 'assets/56.png'),
    Pet(name: 'Suku', imagePath: 'assets/57.png'),

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pets.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Adjust number of columns
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PetDetailsPage(pet: pets[index]),
              ),
            );
          },
          child: Card(
            child: GridTile(
              child: Image.asset(pets[index].imagePath, fit: BoxFit.cover),
              footer: Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black54,
                child: Text(
                  pets[index].name,
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
