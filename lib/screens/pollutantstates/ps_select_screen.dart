import 'package:aqius/screens/overview/overview_screen.dart';
import 'package:aqius/screens/pollutantstates/ps_screen.dart';
import 'package:aqius/wide_rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class PSSelectScreen extends StatefulWidget {
  const PSSelectScreen({Key? key}) : super(key: key);

  @override
  State<PSSelectScreen> createState() => _PSSelectScreenState();
}

class _PSSelectScreenState extends State<PSSelectScreen> {
  late List<String> states;
  late String pollutant;
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
              child: DropdownSearch<String>.multiSelection(
                  mode: Mode.MENU,
                  //showSelectedItem: true,
                  items: ["Florida", "Georgia", "New York", 'Texas'],
                  label: "State",
                  hint: "Select a state to examine",
                  popupItemDisabled: (String s) => s.startsWith('I'),
                  onChanged: (input) {
                    states = input;
                  },
                  selectedItems: ["Florida"]),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: DropdownSearch<String>(
                  mode: Mode.MENU,
                  //showSelectedItem: true,
                  items: ["Pollutant1", "Pol2", "Pol3", 'Pol4'],
                  label: "Pollutants",
                  hint: "Select pollutants to examine",
                  popupItemDisabled: (String s) => s.startsWith('I'),
                  onChanged: (input) {
                    pollutant = input!;
                  },
                  selectedItem: "Pollutant1"),
            ),
            WideRoundedButton(
                title: "Continue",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PSScreen(),
                      ));
                })
          ],
        ),
      ),
    );
  }
}
