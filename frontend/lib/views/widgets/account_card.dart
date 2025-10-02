import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final bool isSelected;
  final VoidCallback onTap;

  const AccountCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isSelected
          ? const Color(0xFF6BACF6) // Light blue when selected
          : Colors.white70,         // White when not selected
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 14,
                        color: isSelected ? Colors.white70 : Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                price,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}