import 'package:app1/widgets/character_profile_image.dart';
import 'package:app1/widgets/info_row.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final colors = Theme.of(context).colorScheme;

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
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const DetailsScreen()),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
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
                    color: colors.secondary,
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                  ),
                ),
                InfoRow(
                  value: " Species: ",
                  value2: "Human",
                  icon: Icons.accessibility,
                ),
                SizedBox(height: screenWidth * .008),
                InfoRow(
                  value: " Status: ",
                  value2: "Human",
                  icon: MdiIcons.skull,
                ),
                SizedBox(height: screenWidth * .008),

                InfoRow(value: " Type: ", value2: "Type", icon: Icons.science),
                SizedBox(height: screenWidth * .008),
                InfoRow(
                  value: " Gender: ",
                  value2: "Human",
                  icon: Icons.female,
                ),
                SizedBox(height: screenWidth * .008),
                InfoRow(
                  value: " Origin: ",
                  value2: "Human",
                  icon: Icons.location_on,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
