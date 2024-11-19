import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masdr_hr_insights/utils/text_styles/text_styles.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key, required this.title, required this.value, required this.onChange,
  });

  final String title;
  final bool value;
  final void Function(String) onChange;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChange(title),
      child: Container(
        padding: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            width: 1,
            color: const Color(0xffdadada),
          ),
        ),
        child: Row(
          children: [
            Radio(
                value: value,
                groupValue: title,
                onChanged: (value) {}),
             Text(title, style: AppTextStyles.applyTextStyles(styles: TextStyle(
              fontSize: 12.sp
             ),),)
          ],
        ),
      ),
    );
  }
}