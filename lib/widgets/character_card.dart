import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CharacterCard extends StatelessWidget {
  final String title;
  final String status;
  final String species;
  final String url;
  final VoidCallback onTap;

  const CharacterCard({
    super.key,
    required this.title,
    required this.status,
    required this.url,
    required this.species,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          //border: Border.all(width: .5, color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0,
              blurRadius: 2,
              offset: Offset(1, 1),
            ),
          ],
        ),

        width: screenWidth * .45,
        height: screenWidth * .60,
        child: Column(
          spacing: 5,

          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.network(
                url,
                width: screenWidth * .45,
                fit: BoxFit.cover,
              ),
            ),

            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1,
                fontWeight: FontWeight.bold,
                color: colors.primary,
                fontSize: 20,
              ),

              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}


 // Column(
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         if (status == 'unknown')
          //           Row(
          //             mainAxisSize: MainAxisSize.min,
          //             children: [
          //               Text(
          //                 'Unknown',
          //                 style: TextStyle(
          //                   color: Colors.grey,
          //                   fontWeight: FontWeight.w500,
          //                 ),
          //               ),
          //               Icon(Icons.question_mark, size: 20, color: Colors.grey),
          //             ],
          //           ),
          //         if (status == 'Dead')
          //           Row(
          //             mainAxisSize: MainAxisSize.min,
          //             children: [
          //               Text(
          //                 'Dead  ',
          //                 style: TextStyle(
          //                   color: Colors.grey,
          //                   fontWeight: FontWeight.w500,
          //                 ),
          //               ),
          //               Icon(MdiIcons.skull, color: Colors.grey),
          //             ],
          //           ),
          //         if (status == 'Alive')
          //           Row(
          //             mainAxisSize: MainAxisSize.min,
          //             children: [
          //               Text(
          //                 'Alive  ',
          //                 style: TextStyle(
          //                   color: Colors.grey,
          //                   fontWeight: FontWeight.w500,
          //                 ),
          //               ),
          //               Icon(MdiIcons.heart, size: 20, color: Colors.grey),
          //             ],
          //           ),
          //       ],
          //     ),
          //   ],
          // ),