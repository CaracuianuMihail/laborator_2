import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/search_bar.dart';
import '../widgets/service_card.dart';
import '../widgets/speciality_item.dart';
import '../widgets/specialist_card.dart';
import 'doctor_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                ProfileHeader(),
                const SizedBox(height: 16),

                // SearchBar + icon separate
                Row(
                  children: [
                    Expanded(
                      child: SearchBarWidget(controller: searchController),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFD9D9D9)),
                      ),
                      child: IconButton(
                        onPressed: () {
                          print('Filtru apăsat');
                        },
                        icon: Image.asset(
                          'assets/images/scanner.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Primul rând cu 2 boxuri mari
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    BoxCard(
                      imagePath: 'assets/images/book_appointment.jpg',
                      title: 'Book Appointment',
                      width: 180,
                      height: 140,
                    ),
                    SizedBox(width: 19),
                    BoxCard(
                      imagePath: 'assets/images/instant_video_consult.jpg',
                      title: 'Instant Video Consult',
                      width: 180,
                      height: 140,
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Al doilea rând cu 3 boxuri mici
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    BoxCard(
                      imagePath: 'assets/images/medicinies.jpg',
                      title: 'Medicines',
                      width: 115,
                      height: 112,
                    ),
                    SizedBox(width: 17),
                    BoxCard(
                      imagePath: 'assets/images/lab_tests.jpg',
                      title: 'Lab Tests',
                      width: 115,
                      height: 112,
                    ),
                    SizedBox(width: 17),
                    BoxCard(
                      imagePath: 'assets/images/emergency.jpg',
                      title: 'Emergency',
                      width: 115,
                      height: 112,
                    ),
                  ],
                ),

                const SizedBox(height: 28),

                // Titlu secțiune Specialities
                const Text(
                  'Specialities most relevant to you',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF171318),
                  ),
                ),
                const SizedBox(height: 16),

                // iconițele rotunde cu text
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SpecialityItem(iconPath: 'assets/images/eye_icon.png', title: 'Eye Specialist'),
                      const SizedBox(width: 12),
                      const SpecialityItem(iconPath: 'assets/images/teeth_icon.png', title: 'Dentist'),
                      const SizedBox(width: 12),

                      // aici scoatem const pentru că avem onTap
                      SpecialityItem(
                        iconPath: 'assets/images/cardiologist_icon.png',
                        title: 'Cardiologist',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DoctorDetailsScreen(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 12),
                      const SpecialityItem(iconPath: 'assets/images/pulmonologist_icon.png', title: 'Pulmonologist'),
                      const SizedBox(width: 12),
                      const SpecialityItem(iconPath: 'assets/images/physiotherapist_icon.png', title: 'Physiotherapist'),
                    ],
                  ),
                ),


                const SizedBox(height: 28),

                // Titlu secțiune Specialists
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Specialists',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF171318),
                      ),
                    ),
                    Text(
                      'View all >',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF00BFA5),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                // Carduri Specialiști
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      SpecialistCard(
                        imagePath: 'assets/images/doctor1.png',
                        title: 'General Practitioners',
                      ),
                      SizedBox(width: 16),
                      SpecialistCard(
                        imagePath: 'assets/images/doctor2.png',
                        title: 'General Practitioners',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
