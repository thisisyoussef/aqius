import 'package:aqius/screens/daysbreached/days_select_screen.dart';
import 'package:aqius/screens/overview/overview_select_screen.dart';
import 'package:aqius/screens/pollutantstates/ps_select_screen.dart';
import 'package:aqius/screens/statewise/statewise_select_screen.dart';
import 'package:aqius/screens/timepollutant/tp_select_screen.dart';
import 'package:aqius/screens/weeklypollutant/wp_select_screen.dart';
import 'package:flutter/material.dart';

class SelectModeScreen extends StatelessWidget {
  const SelectModeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 20.0, // gap between lines
        children: [
          ModeCard(
            title: "State/County Overview",
            iconData: Icons.search,
            description:
                "Get an overview on the air quality of a state or county",
            modeScreen: OverviewSelectScreen(),
          ),
          ModeCard(
            title: "Days Safety Level is Breached",
            iconData: Icons.bar_chart,
            description:
                "Get a bar chart representing the number of days in that year that breached the maximum recommended value that is safe for that pollutant",
            modeScreen: DaysBreachedSelectScreen(),
          ),
          ModeCard(
            title: "Time vs Pollutant Analysis",
            iconData: Icons.stacked_line_chart,
            description:
                "Get a line chart representing the timings at which the level of different pollutants was the highest and when was the level the lowest.",
            modeScreen: TPSelectScreen(),
          ),
          ModeCard(
            title: "Pollutant Weekly Analysis",
            iconData: Icons.calendar_today_outlined,
            description:
                "Get a line chart representing the average of every day in a period of time at which the level of a pollutant was the highest and when was the level the lowest",
            modeScreen: WPSelectScreen(),
          ),
          ModeCard(
            title: "Pollutant in Multiple States",
            iconData: Icons.compare,
            description:
                "Get a line chart representing the months in which the level of pollution was the highest and when was the level the lowest amongst the selected states that a user chooses to compare",
            modeScreen: PSSelectScreen(),
          ),
          ModeCard(
            title: "Statewise Analysis",
            iconData: Icons.map_outlined,
            description:
                "Get a line chart representing the month wise pollution level for more than one pollutant that a user selects within a single state",
            modeScreen: StatewiseSelectScreen(),
          ),
        ],
      ),
    );
  }
}

class ModeCard extends StatelessWidget {
  const ModeCard(
      {Key? key,
      required this.title,
      required this.iconData,
      required this.description,
      required this.modeScreen})
      : super(key: key);
  final String title;
  final IconData iconData;
  final String description;
  final Widget modeScreen;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => modeScreen,
            ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Material(
            elevation: 20,
            child: Container(
              constraints: BoxConstraints(
                  minWidth: 100, maxWidth: 300, minHeight: 150, maxHeight: 350),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                //borderRadius: BorderRadius.all(
                //  Radius.circular(15),
                // ),
              ),
              width: MediaQuery.of(context).size.width / 3.33,
              height: MediaQuery.of(context).size.width / 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      iconData,
                      size: 50,
                    ),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
