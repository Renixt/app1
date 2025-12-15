import 'package:flutter/material.dart';

class CharacterProfileImage extends StatelessWidget {
  final String name;
  final String url;
  const CharacterProfileImage({
    super.key,
    required this.name,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: screenWidth * .90,
      width: screenWidth,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,

            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: NetworkImage(url),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  shadows: [
                    Shadow(
                      color: const Color.fromARGB(125, 46, 45, 45),
                      blurRadius: 5,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
