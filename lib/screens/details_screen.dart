import 'package:app1/widgets/character_profile_image.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      /*  extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),*/
      appBar: AppBar(
        //title: Text('Rick Sanchez'),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            CharacterProfileImage(),
            Column(
              children: [
                Text(
                  'Information',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 83, 83, 83),
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.accessibility, size: 20, color: Colors.grey),

                    Text(
                      'Species: ${screenWidth}',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenWidth * .008),
                Row(
                  children: [
                    Icon(MdiIcons.skull, size: 20, color: Colors.grey),

                    Text(
                      'Status: Unknown',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenWidth * .008),

                Row(
                  children: [
                    Icon(Icons.science, size: 20, color: Colors.grey),

                    Text(
                      'Type: Unknown',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.female, size: 20, color: Colors.grey),

                    Text(
                      'Gender: Unknown',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 20, color: Colors.grey),

                    Text(
                      'Origin: Unknown',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
