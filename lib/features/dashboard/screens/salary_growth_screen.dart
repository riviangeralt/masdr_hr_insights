import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masdr_hr_insights/features/dashboard/screens/dashboard_screen.dart';
import 'package:masdr_hr_insights/features/dashboard/widgets/compare_compary.dart';
import 'package:masdr_hr_insights/features/dashboard/widgets/turnover_stats.dart';

class SalaryGrowthScreen extends StatelessWidget {
  const SalaryGrowthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          // TabPanels
          const SizedBox(
            height: 8.0,
          ),
          const TurnoverStats(),
          const SizedBox(
            height: 8.0,
          ),
          const CompareCompany(),
          const SizedBox(
            height: 8.0,
          ),
          const GraphFilter(),
          const SizedBox(
            height: 8.0,
          ),
          Container(
            height: 300.h,
            color: Theme.of(context).primaryColor,
          )
        ],
      ),
    );
  }
}