import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masdr_hr_insights/features/dashboard/controller/dashboard_controller.dart';
import 'package:masdr_hr_insights/features/dashboard/utils/enums.dart';
import 'package:masdr_hr_insights/features/dashboard/widgets/custom_tab.dart';

class CustomDashboardTabbar extends StatelessWidget {
  const CustomDashboardTabbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());

    return Obx(
      () {
        return Row(
          children: [
            Expanded(
              child: CustomTab(
                label: TabEnums.Turnover.value,
                isActive:
                    controller.selectedTab.value == TabEnums.Turnover.value,
                onChange: controller.onChangeTab,
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: CustomTab(
                label: TabEnums.SalaryGrowth.value,
                isActive:
                    controller.selectedTab.value == TabEnums.SalaryGrowth.value,
                onChange: controller.onChangeTab,
              ),
            ),
          ],
        );
      },
    );
  }
}
