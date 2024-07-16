import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                bottom: 16.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  16.0,
                ),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.network(
                      width: 110.w,
                      height: 120.h,
                      'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                  horizontalSpace(16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'sfdf',
                          style: TextStyles.font18DarkBlueBold,
                          overflow: TextOverflow.ellipsis,
                        ),
                        verticalSpace(5),
                        Text(
                          'sfdf',
                          style: TextStyles.font12GrayMedium,
                        ),
                        verticalSpace(5),
                        Text(
                          'sfdfd',
                          style: TextStyles.font12GrayMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
