import 'package:flutter/material.dart';

class InClinicAppointment extends StatelessWidget {
  const InClinicAppointment({super.key});

  Widget _timeChip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: const Color(0xFFEAF8F8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 12, color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFF4F4F4)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            decoration: const BoxDecoration(
              color: Color(0xFFEAF8F8),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('In-Clinic Appointment',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                Text('৳1,000',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Evercare Hospital Ltd.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14)),
                          SizedBox(height: 2),
                          Text('Boshundhora, Dhaka',
                              style: TextStyle(fontSize: 12, color: Colors.teal)),
                          SizedBox(height: 2),
                          Text('20 mins or less wait time',
                              style: TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    InkWell(
                      onTap: () {},
                      child: const Text('2 More clinic',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.teal,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                // zilele
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          Text('Today',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13)),
                          Text('(No Slot)',
                              style: TextStyle(
                                  fontSize: 11, color: Colors.grey)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: const [
                          Text('Tomorrow',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13)),
                          Text('(20 Slot)',
                              style: TextStyle(
                                  fontSize: 11, color: Colors.teal)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: const [
                          Text('17 Oct',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13)),
                          Text('(1 Slot)',
                              style: TextStyle(
                                  fontSize: 11, color: Colors.grey)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: const Color(0xFFF4F4F4),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 80,
                      color: Colors.teal,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    _timeChip('06:00 - 06:30'),
                    _timeChip('06:30 - 07:00'),
                    _timeChip('07:00 - 07:30'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
