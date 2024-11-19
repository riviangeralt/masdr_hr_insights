import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masdr_hr_insights/features/auth/widgets/auth_form.dart';

class EnterEstablishmentScreen extends StatelessWidget {
  const EnterEstablishmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12.h),
        child: const Center(child: AuthForm()),
      ),
    );
  }
}
