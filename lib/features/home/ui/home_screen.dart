import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:doctor/features/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:doctor/features/home/ui/widgets/home_top_bar.dart';
import 'package:doctor/features/home/ui/widgets/specializations_and_doctors_bloc_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorBlueContainer(),
              verticalSpace(24),
              const DoctorSpecialitySeeAll(),
              verticalSpace(18),
              const SpecializationsAndDoctorsBlocBuilder(),
             
            ],
          ),
        ),
      ),
    );
  }
}

