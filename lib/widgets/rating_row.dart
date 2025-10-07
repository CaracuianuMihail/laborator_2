import 'package:flutter/material.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/star_fill_icon.png', width: 16, height: 16),
                  const SizedBox(width: 4),
                  const Text('4.3', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 4),
              const Text('Rating & Review', style: TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
        ),
        Container(width: 1, height: 32, color: Colors.grey.shade300),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/briefcase_icon.png', width: 16, height: 16),
                  const SizedBox(width: 4),
                  const Text('14', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 4),
              const Text('Years of work', style: TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
        ),
        Container(width: 1, height: 32, color: Colors.grey.shade300),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/patients_icon.png', width: 16, height: 16),
                  const SizedBox(width: 4),
                  const Text('125', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 4),
              const Text('No. of patients', style: TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
        ),
      ],
    );
  }
}
