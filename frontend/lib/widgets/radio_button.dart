import 'package:flutter/material.dart';

class RadioButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const RadioButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isSelected
          ? const Color(0x6BACF6FF) // Light blue when selected
          : Colors.transparent,     // Transparent when not selected
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 8, 32, 8),
          child: Row(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: isSelected ? Colors.white : Color.fromARGB(255, 0, 78, 161),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}