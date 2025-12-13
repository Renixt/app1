import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final String title;
  final String status;
  final String url;

  const CharacterCard({
    super.key,
    required this.title,
    required this.status,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
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
      height: screenWidth * .65,
      child: Column(
        spacing: 10,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.network(url, width: 180, fit: BoxFit.cover),
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
          Text(status, style: TextStyle(color: colors.secondary)),
        ],
      ),
    );
  }
}
