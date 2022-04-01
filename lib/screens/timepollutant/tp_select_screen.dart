import 'package:aqius/screens/overview/overview_screen.dart';
import 'package:aqius/screens/timepollutant/tp_screen.dart';
import 'package:aqius/wide_rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class TPSelectScreen extends StatefulWidget {
  const TPSelectScreen({Key? key}) : super(key: key);

  @override
  State<TPSelectScreen> createState() => _TPSelectScreenState();
}

class _TPSelectScreenState extends State<TPSelectScreen> {
  late String state;
  late List<String> pollutants;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: DropdownSearch<String>(
                  mode: Mode.MENU,
                  //showSelectedItem: true,
                  items: ["Florida", "Georgia", "New York", 'Texas'],
                  label: "State",
                  hint: "Select a state to examine",
                  popupItemDisabled: (String s) => s.startsWith('I'),
                  onChanged: (input) {
                    state = input!;
                  },
                  selectedItem: "Florida"),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: DropdownSearch<String>.multiSelection(
                  mode: Mode.MENU,
                  //showSelectedItem: true,
                  items: ["Pollutant1", "Pol2", "Pol3", 'Pol4'],
                  label: "Pollutants",
                  hint: "Select pollutants to examine",
                  popupItemDisabled: (String s) => s.startsWith('I'),
                  onChanged: (input) {
                    pollutants = input!;
                  },
                  selectedItems: ["Pollutant1"]),
            ),
            WideRoundedButton(
                title: "Continue",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TPScreen(),
                      ));
                })
          ],
        ),
      ),
    );
  }
}
