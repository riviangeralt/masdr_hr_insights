import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masdr_hr_insights/features/dashboard/controller/dashboard_controller.dart';
import 'package:masdr_hr_insights/features/dashboard/widgets/dashboard_stats_card.dart';

class TurnoverStats extends StatelessWidget {
  const TurnoverStats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());
    return Obx(
      () {
        return SizedBox(
          height: 112 * 3,
          child: ListView.builder(
            itemCount: controller.turnoverDetailsList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                  bottom: index != 2 ? 10 : 0,
                ),
                child: const DashboardStatsCard(
                  color: Colors.blue,
                  title: "Headcount",
                  value: 900,
                  rightValue: '19.8%',
                ),
              );
            },
          ),
        );
      },
    );
  }
}
