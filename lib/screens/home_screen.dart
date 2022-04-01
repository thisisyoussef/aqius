import 'package:aqius/screens/overview/overview_select_screen.dart';
import 'package:aqius/wide_rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'select_mode_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            Icon(Icons.ac_unit_outlined),
            MenuButton(text: 'Product', callback: () {}),
            MenuButton(text: 'Pricing', callback: () {}),
            MenuButton(text: 'Contact', callback: () {})
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Poor Air Quality is Hazardous',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        "Stay informed with us, we'll tell you what you need to do",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      )
                    ],
                  ),
                  Placeholder()
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InfoCard(
                        description:
                            'This query gives you the option to select an hour in a day to get the trend of pollutants and know what time has the highest pollution',
                        iconData: Icons.stacked_bar_chart,
                        title: 'Time vs Pollutant Analysis',
                      ),
                      InfoCard(
                        description:
                            'This query allows you to compare the level of a single pollutant between two or more states. You can select from various pollutants to compare.',
                        iconData: Icons.data_usage_rounded,
                        title: 'State Wide Analysis',
                      ),
                      InfoCard(
                        description:
                            'This query will analyze the time a pollutant has breached its reccomended safety level',
                        iconData: Icons.check_circle_rounded,
                        title: 'Safety Level of Pollutants',
                      ),
                    ],
                  ),
                ),
              ),
              WideRoundedButton(
                  title: "Get Started",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectModeScreen(),
                        ));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard(
      {Key? key,
      required this.title,
      required this.iconData,
      required this.description})
      : super(key: key);
  final String title;
  final IconData iconData;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class MenuButton extends StatelessWidget {
  MenuButton(
      {Key? key,
      required this.text,
      required this.callback,
      this.horiPadding = 50,
      this.vertiPadding = 18})
      : super(key: key);
  final String text;
  final Function callback;
  double horiPadding;
  double vertiPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: horiPadding, vertical: vertiPadding),
      child: TextButton(
        onPressed: callback(),
        child: Text(
          text,
        ),
      ),
    );
  }
}
