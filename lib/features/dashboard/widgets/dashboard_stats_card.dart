import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardStatsCard extends StatelessWidget {
  const DashboardStatsCard({
    super.key,
    required this.color,
    required this.title,
    required this.value,
    required this.rightValue,
  });

  final Color color;
  final String title;
  final int value;
  final String rightValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.white,
                  ),
                ),
                Text(
                  value.toString(),
                  style: TextStyle(
                    fontSize: 24.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              rightValue,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
