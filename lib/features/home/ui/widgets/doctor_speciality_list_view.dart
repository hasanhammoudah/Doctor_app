import 'package:doctor/features/home/data/models/specializations_response_model.dart';
import 'package:doctor/features/home/ui/widgets/doctors_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView(
      {super.key, required this.specializationsDataList});

  final List<SpecializationsData?> specializationsDataList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: specializationsDataList.length,
          itemBuilder: (context, index) {
            return DoctorSpecialityListViewItem(
              specializationsData: specializationsDataList[index],
              itemIndex: index,
            );
          }),
    );
  }
}
