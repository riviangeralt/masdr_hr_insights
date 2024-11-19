import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "dart:developer";

import 'package:masdr_hr_insights/features/dashboard/screens/dashboard_screen.dart';

class AuthController extends GetxController {
  static AuthController get instance => Get.find();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final estIdController = TextEditingController();

   void onSubmit() {
    try {
      if (formKey.currentState!.validate()) {
        Get.offAll(() => const DashboardScreen());
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
