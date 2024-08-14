import 'package:doctor/features/home/data/models/specializations_response_model.dart';
import 'package:doctor/features/home/ui/widgets/doctors_list/doctors_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key, this.doctorList});

  final List<Doctors?>? doctorList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: doctorList?.length,
          itemBuilder: (context, index) {
            return DoctorsListViewItem(
              doctorsModel: doctorList?[index],
            );
          }),
    );
  }
}
