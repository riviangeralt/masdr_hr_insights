import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masdr_hr_insights/features/auth/controller/auth_controller.dart';
import 'package:masdr_hr_insights/utils/device/device_utility.dart';
import 'package:masdr_hr_insights/utils/text_styles/text_styles.dart';
import 'package:masdr_hr_insights/utils/validators/validation.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());
    return SingleChildScrollView(
      child: Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Establishment ID',
              style: AppTextStyles.applyTextStyles(
                styles: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              constraints: BoxConstraints(
                minHeight: 46.h,
              ),
              child: TextFormField(
                keyboardType: const TextInputType.numberWithOptions(
                  signed: true,
                  decimal: true,
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,4}'))
                ],
                controller: controller.estIdController,
                validator: AppValidator.validateEstId,
                decoration: const InputDecoration(
                  hintText: '12345',
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              width: AppDeviceUtils.getScreenWidth(context),
              height: 48.h,
              child: ElevatedButton(
                  onPressed: controller.onSubmit,
                  child: Text(
                    'Login',
                    style: AppTextStyles.applyTextStyles(
                      styles: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),
              
            ),
          ],
        ),
      ),
    );
  }
}
