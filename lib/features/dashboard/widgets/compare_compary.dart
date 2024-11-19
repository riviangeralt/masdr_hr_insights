import 'package:flutter/material.dart';

class CompareCompany extends StatelessWidget {
  const CompareCompany({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1,
          color: const Color(0xffdadada),
        ),
      ),
      child: Row(
        children: [
          const Text('Compare company with competitors'),
          Switch(value: false, onChanged: (value) {})
        ],
      ),
    );
  }
}
