import 'package:flutter/material.dart';
import '../widgets/doctor_card.dart';
import '../widgets/rating_row.dart';
import '../widgets/timing_card.dart';
import '../widgets/location_card.dart';
import '../widgets/in_clinic_appointment.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset('assets/images/vector.png', width: 20, height: 20),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Cardiologist', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Image.asset('assets/images/star.png', width: 20, height: 20),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('assets/images/share.png', width: 20, height: 20),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // card doctor
            DoctorCard(),
            const SizedBox(height: 16),

            // rating row
            RatingRow(),
            const SizedBox(height: 16),

            // bloc In-Clinic Appointment
            const InClinicAppointment(),
            const SizedBox(height: 24),

            // Timing section
            const Text(
              'Timing',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(child: TimingCard('Monday', '09:00 AM - 05:00 PM')),
                const SizedBox(width: 8),
                Expanded(child: TimingCard('Tuesday', '09:00 AM - 05:00 PM')),
                const SizedBox(width: 8),
                Expanded(child: TimingCard('Wednesday', 'Closed')),
              ],
            ),
            const SizedBox(height: 24),

            // Location section
            const Text(
              'Location',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(child: LocationCard('Shahbag', 'BSSMU - Bangabandhu Sheikh Mujib')),
                const SizedBox(width: 8),
                Expanded(child: LocationCard('Boshundhora', 'Evercare Hospital Ltd')),
                const SizedBox(width: 8),
                Expanded(child: LocationCard('Banani', 'Evercare Hospital Ltd')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
