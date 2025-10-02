import 'package:flutter/material.dart';

class AttendanceSelector extends StatelessWidget {
  final String selectedStatus;
  final ValueChanged<String> onStatusChanged;

  const AttendanceSelector({
    super.key,
    required this.selectedStatus,
    required this.onStatusChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<String>(
      segments: const <ButtonSegment<String>>[
        ButtonSegment<String>(
          value: 'Unknown',
          label: Text('Unknown'),
        ),
        ButtonSegment<String>(
          value: 'Accepted',
          label: Text('✓'),
        ),
        ButtonSegment<String>(
          value: 'Absent',
          label: Text('✗'),
        ),
      ],
      selected: <String>{selectedStatus},
      onSelectionChanged: (Set<String> newSelection) {
        onStatusChanged(newSelection.first);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.white;
            }
            return Colors.white.withOpacity(0.3);
          },
        ),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
    );
  }
}