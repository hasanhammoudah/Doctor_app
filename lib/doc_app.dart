import 'package:doctor/core/helpers/constants.dart';
import 'package:doctor/core/routing/app_router.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/core/theming/colors.dart';
import 'package:doctor/main_development.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    //HHHHHHHHHHHHH
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: isLoggedInUser ? Routes.homeScreen : Routes.loginScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
