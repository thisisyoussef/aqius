import 'package:aqius/screens/overview/overview_screen.dart';
import 'package:aqius/wide_rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class OverviewSelectScreen extends StatefulWidget {
  const OverviewSelectScreen({Key? key}) : super(key: key);

  @override
  State<OverviewSelectScreen> createState() => _OverviewSelectScreenState();
}

class _OverviewSelectScreenState extends State<OverviewSelectScreen> {
  late String state;
  late String county;
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
              child: DropdownSearch<String>(
                  mode: Mode.MENU,
                  //showSelectedItem: true,
                  items: ["Florida", "Italia (Disabled)", "Tunisia", 'Canada'],
                  label: "County (Optional)",
                  hint: "Select a county to examine",
                  popupItemDisabled: (String s) => s.startsWith('I'),
                  onChanged: (input) {
                    county = input!;
                  },
                  selectedItem: "Florida"),
            ),
            WideRoundedButton(
                title: "Continue",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OverviewScreen(),
                      ));
                })
          ],
        ),
      ),
    );
  }
}
