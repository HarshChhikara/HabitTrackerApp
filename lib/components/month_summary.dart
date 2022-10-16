import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:habittrackerapp/datetime/date_time.dart';

class MonthlySummary extends StatelessWidget {
  final Map<DateTime, int>? datasets;
  final String startDate;

  const MonthlySummary({
    super.key,
    required this.datasets,
    required this.startDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, bottom: 25),
      child: HeatMap(
        startDate: createDateTimeObject(startDate),
        endDate: DateTime.now().add(Duration(days: 0)),
        datasets: datasets,
        colorMode: ColorMode.color,
        defaultColor: Colors.grey[200],
        textColor: Colors.white,
        showColorTip: false,
        showText: true,
        scrollable: true,
        size: 30,
        colorsets: const {
          1: Color.fromARGB(20, 220, 220, 220),
          2: Color.fromARGB(40, 211, 211, 211),
          3: Color.fromARGB(60, 192, 192, 192),
          4: Color.fromARGB(80, 169, 169, 169),
          5: Color.fromARGB(100, 128, 128, 128),
          6: Color.fromARGB(120, 110, 110, 110),
          7: Color.fromARGB(180, 119, 136, 153),
          8: Color.fromARGB(220, 112, 128, 144),
          9: Color.fromARGB(150, 112, 150, 160),
          10: Color.fromARGB(255, 47, 79, 79),
        },
        onClick: (value) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(value.toString())));
        },
      ),
    );
  }
}