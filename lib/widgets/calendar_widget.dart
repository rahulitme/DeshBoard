import 'package:flutter/material.dart';

class CalendarWidget extends StatelessWidget {
  final String title;
  final List<int> selectedDates;

  const CalendarWidget({
    super.key,
    this.title = 'GENERAL 10:00 AM TO 7:00 PM',
    this.selectedDates = const [27, 28, 29, 30], // Including all dates in range
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            _buildMonthSelector(),
            const SizedBox(height: 10),
            _buildCalendarGrid(),
          ],
        ),
      ),
    );
  }

  Widget _buildMonthSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'OCT',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 4),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.blue[700],
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                '2023',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 4),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.blue[700],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCalendarGrid() {
    final daysOfWeek = ['Mo', 'Tu', 'We', 'Th', 'Fri', 'Sa', 'Su'];
    final days = [
      29,
      30,
      31,
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
      11,
      12,
      13,
      14,
      15,
      16,
      17,
      18,
      19,
      20,
      21,
      22,
      23,
      24,
      25,
      26,
      27,
      28,
      29,
      30,
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
    ];

    return Column(
      children: [
        // Days of week header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: daysOfWeek
              .map((day) => Expanded(
                    child: Center(
                      child: Text(
                        day,
                        style: TextStyle(
                          color: Colors.blue[700],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
        const SizedBox(height: 8),
        // Calendar grid with custom paint
        CustomPaint(
          painter: RangeHighlightPainter(
            selectedDates: selectedDates,
            days: days,
          ),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              childAspectRatio: 1,
            ),
            itemCount: days.length,
            itemBuilder: (context, index) {
              final day = days[index];
              final isSelected = selectedDates.contains(day);
              final isCurrentMonth = day >= 1 && day <= 31;

              return Center(
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: isSelected
                      ? BoxDecoration(
                          color: Colors.blue[700],
                          shape: BoxShape.circle,
                        )
                      : null,
                  child: Center(
                    child: Text(
                      day.toString(),
                      style: TextStyle(
                        color: isSelected
                            ? Colors.white
                            : isCurrentMonth
                                ? Colors.black
                                : Colors.grey,
                        fontWeight:
                            isSelected ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class RangeHighlightPainter extends CustomPainter {
  final List<int> selectedDates;
  final List<int> days;

  RangeHighlightPainter({
    required this.selectedDates,
    required this.days,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (selectedDates.length < 2) return;

    final paint = Paint()
      ..color = Colors.blue[700]!.withOpacity(0.2)
      ..style = PaintingStyle.fill;

    final cellWidth = size.width / 7;
    final cellHeight = size.height / 6;

    // Find the positions of selected dates
    List<Offset> selectedPositions = [];
    for (int i = 0; i < days.length; i++) {
      if (selectedDates.contains(days[i])) {
        final row = i ~/ 7;
        final col = i % 7;
        final center = Offset(
          col * cellWidth + cellWidth / 2,
          row * cellHeight + cellHeight / 2,
        );
        selectedPositions.add(center);
      }
    }

    // Draw rectangles between consecutive selected dates
    for (int i = 0; i < selectedPositions.length - 1; i++) {
      final start = selectedPositions[i];
      final end = selectedPositions[i + 1];

      final rect = Rect.fromCenter(
        center: Offset(
          (start.dx + end.dx) / 2,
          start.dy,
        ),
        width: (end.dx - start.dx),
        height: cellHeight * 0.7,
      );

      canvas.drawRRect(
        RRect.fromRectAndRadius(rect, const Radius.circular(10)),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
