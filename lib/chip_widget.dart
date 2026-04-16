import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final int value;
  final Color backgroundColor;
  final Color borderColor;

  const ChipWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.backgroundColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: backgroundColor.withAlpha(16),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        children: [
          Icon(icon, color: backgroundColor, size: 18),
          SizedBox(width: 8),
          Text("$label :"),
          Text("$value", style: TextStyle(fontWeight: .bold)),
        ],
      ),
    );
  }
}
