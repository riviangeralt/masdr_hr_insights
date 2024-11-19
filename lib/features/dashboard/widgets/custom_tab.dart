import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({
    super.key,
    required this.label,
    required this.isActive,
    required this.onChange,
  });

  final String label;
  final bool isActive;
  final void Function(String) onChange;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChange(label),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isActive ? Theme.of(context).primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            width: 1,
            color: isActive ? Colors.transparent : const Color(0xffdadada),
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
                color: isActive ? Colors.white : Colors.black, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
