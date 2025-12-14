import 'package:app1/screens/characters_screen.dart';
import 'package:app1/widgets/character_profile_image.dart';
import 'package:app1/widgets/info_row.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DetailsScreen extends StatelessWidget {
  final Map character;

  const DetailsScreen({super.key, required this.character});

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
            context.pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            CharacterProfileImage(
              name: character['name'],
              url: character['image'],
            ),
            SizedBox(height: screenWidth * .008),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0,
                    blurRadius: 2,
                    offset: Offset(1, 1),
                  ),
                ],
              ),

              child: Column(
                children: [
                  Text(
                    'Information',
                    style: TextStyle(
                      color: colors.primary,
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                  InfoRow(
                    value: " Species: ",
                    value2: character['species'],
                    icon: Icons.accessibility,
                  ),
                  InfoRow(
                    value: " Status: ",
                    value2: character['status'],
                    icon: MdiIcons.skull,
                  ),

                  if (character['gender'] == "Female")
                    InfoRow(
                      value: " Gender: ",
                      value2: character['gender'],
                      icon: Icons.female,
                    ),
                  if (character['gender'] == "Male")
                    InfoRow(
                      value: " Gender: ",
                      value2: character['gender'],
                      icon: Icons.male,
                    ),
                  InfoRow(
                    value: " Origin: ",
                    value2: character['origin']['name'],
                    icon: Icons.location_on,
                  ),
                  if (character['type'] != "")
                    InfoRow(
                      value: " Type: ",
                      value2: character['type'],
                      icon: Icons.science,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//                SizedBox(height: screenWidth * .008),
