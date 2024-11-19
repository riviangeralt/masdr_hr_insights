import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:masdr_hr_insights/features/auth/screens/establisment_screen.dart';
import 'package:masdr_hr_insights/features/dashboard/screens/dashboard_screen.dart';
import 'package:masdr_hr_insights/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: const TextScaler.linear(
            1.0,
          ),
        ),
        child:  GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          // theme: ThemeData(
          //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple)
          // ),
          home: const EnterEstablishmentScreen(),
        ),
      ),
    );
  }
}
