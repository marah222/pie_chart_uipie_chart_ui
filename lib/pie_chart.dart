import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyPieChart extends StatelessWidget {
  const MyPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Text(
            "Revenue",
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 220,
              height: 220,
              child: PieChart(
            swapAnimationDuration: const Duration(milliseconds: 750),
            swapAnimationCurve: Curves.easeInOutQuint,
            PieChartData(sections: [
              PieChartSectionData(value: 20, color: Colors.cyan),
              PieChartSectionData(value: 30, color: Colors.redAccent),
              PieChartSectionData(value: 32, color: Colors.yellowAccent),
              PieChartSectionData(value: 56, color: Colors.greenAccent),
            ]),
          )),
        ],
      ),
    );
  }
}
