import 'package:flutter/material.dart';

class SpecialityItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback? onTap;

  const SpecialityItem({
    super.key,
    required this.iconPath,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
              color: const Color(0xFFEAF8F8),
              borderRadius: BorderRadius.circular(28),
            ),
            child: Center(
              child: Image.asset(
                iconPath,
                width: 32,
                height: 32,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
