import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masdr_hr_insights/features/dashboard/controller/dashboard_controller.dart';
import 'package:masdr_hr_insights/features/dashboard/screens/salary_growth_screen.dart';
import 'package:masdr_hr_insights/features/dashboard/screens/turnover_screen.dart';
import 'package:masdr_hr_insights/features/dashboard/utils/enums.dart';
import 'package:masdr_hr_insights/features/dashboard/widgets/custom_chip.dart';
import 'package:masdr_hr_insights/features/dashboard/widgets/custom_dashboard_tab_bar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomDashboardTabbar(),
            ),
            Obx(
              () {
                return controller.selectedTab.value == TabEnums.Turnover.value
                    ? const TurnoverScreen()
                    : const SalaryGrowthScreen();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class GraphFilter extends StatelessWidget {
  const GraphFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomChip(
          title: 'Job Title',
          value: false,
          onChange: (value) {},
        ),
        CustomChip(
          title: 'Age',
          value: false,
          onChange: (value) {},
        ),
        CustomChip(
          title: 'Gender',
          value: false,
          onChange: (value) {},
        ),
        CustomChip(
          title: 'Tenure',
          value: false,
          onChange: (value) {},
        ),
      ],
    );
  }
}
