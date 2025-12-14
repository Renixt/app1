import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.value,
    required this.value2,
    required this.icon,
  });
  final String value;
  final String value2;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final colors = Theme.of(context).colorScheme;

    return Container(
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colors.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: colors.primary,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(icon, size: screenWidth * .05, color: colors.onPrimary),
          ),

          Text(
            value,
            style: TextStyle(
              color: colors.primary,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),

          const SizedBox(width: 4),
          Expanded(
            child: Text(
              value2,
              softWrap: true,
              style: TextStyle(
                color: colors.secondary,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
