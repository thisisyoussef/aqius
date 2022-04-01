import 'package:aqius/screens/daysbreached/days_screen.dart';
import 'package:aqius/screens/overview/overview_screen.dart';
import 'package:aqius/wide_rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class DaysBreachedSelectScreen extends StatefulWidget {
  const DaysBreachedSelectScreen({Key? key}) : super(key: key);

  @override
  State<DaysBreachedSelectScreen> createState() =>
      _DaysBreachedSelectScreenState();
}

class _DaysBreachedSelectScreenState extends State<DaysBreachedSelectScreen> {
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
            WideRoundedButton(
                title: "Continue",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DaysBreachedScreen(),
                      ));
                })
          ],
        ),
      ),
    );
  }
}
