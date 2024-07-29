import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:doctor/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  const DoctorsListViewItem({super.key, this.doctorsModel});
  final Doctors? doctorsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 16.h,
      ),
      child: Row(
        children: [
          // CachedNetworkImage(
          //   imageUrl:
          //       "https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp",
          //   progressIndicatorBuilder: (context, url, downloadProgress) =>
          //       CircularProgressIndicator(value: downloadProgress.progress),
          //   errorWidget: (context, url, error) => const Icon(Icons.error),
          // ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              width: 110.w,
              height: 120.h,
              'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp',
              fit: BoxFit.cover,
            ),
          ),
          horizontalSpace(30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel?.name ?? 'Name',
                  style: TextStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                  style: TextStyles.font12GrayMedium,
                ),
                verticalSpace(5),
                Text(
                  doctorsModel?.email ?? 'test@gmail.com',
                  style: TextStyles.font12GrayMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
