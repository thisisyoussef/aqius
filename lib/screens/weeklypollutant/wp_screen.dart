import 'package:aqius/template_line_chart.dart';
import 'package:flutter/material.dart';
import 'package:aqius/barchart.dart';

class WPScreen extends StatelessWidget {
  const WPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TemplateLineChart(isShowingMainData: true);
  }
}
