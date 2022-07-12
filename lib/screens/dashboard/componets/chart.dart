import 'package:admin/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: -90,
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              sections: pieChartSectionData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: defaultPadding,
                ),
                Text(
                  "29.1",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                ),
                Text("Of 128GB")
              ],
            ),
          )
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSectionData = [
  PieChartSectionData(
    value: 25,
    radius: 25,
    color: primaryColor,
    showTitle: false,
  ),
  PieChartSectionData(
    value: 20,
    radius: 22,
    color: Color(0xFF2625FF),
    showTitle: false,
  ),
  PieChartSectionData(
    value: 10,
    radius: 19,
    color: Color(0xFFFFCF26),
    showTitle: false,
  ),
  PieChartSectionData(
    value: 15,
    radius: 16,
    color: Color(0xFFee2727),
    showTitle: false,
  ),
  PieChartSectionData(
      value: 25,
      radius: 13,
      color: primaryColor.withOpacity(0.1),
      showTitle: false),
];
