import 'package:aqius/barchart.dart';
import 'package:aqius/template_line_chart.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Column(
                          children: [
                            StatusTile(
                              title: 'Air Pollution Level',
                              subtitle: 'GOOD,OK,BAD,VERY BAD',
                              status: 'GOOD',
                            ),
                            StatusTile(
                              title: 'Main Pollutant',
                              subtitle: 'Types of pollutants',
                              status: 'PM2.5',
                            ),
                            StatusTile(
                              title: 'Air Quality Index',
                              subtitle: 'Types Of Pollutants',
                              status: '26',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        //height: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Column(
                          children: [
                            Text("Daily View"),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              //width: 100,
                              child: AspectRatio(
                                aspectRatio: 1.7,
                                child: Card(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)),
                                  child: TemplateBarChart(),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(),
            Column(
              children: [
                Text("Air Quality in Florida"),
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: AspectRatio(
                    aspectRatio: 1.7,
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      child: TemplateLineChart(
                        isShowingMainData: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Wrap(
              children: [Container()],
            )
          ],
        ),
      ),
    );
  }
}

class StatusTile extends StatelessWidget {
  const StatusTile(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.status})
      : super(key: key);

  final String title;
  final String subtitle;
  final String status;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(border: Border(bottom: BorderSide())),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20),
                ),
                Text(subtitle),
              ],
            ),
            Text(
              status,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
