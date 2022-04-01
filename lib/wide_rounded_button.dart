import 'package:aqius/values/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WideRoundedButton extends StatelessWidget {
  WideRoundedButton({
    required this.title,
    required this.onPressed,
    this.textColor,
  });
  final String title;
  final Function onPressed;
  final textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 75,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: CupertinoButton(
            color: AppColors.accentElement,
            child: Text(
              title,
              style: TextStyle(color: AppColors.primaryText),
            ),
            onPressed: () {
              onPressed();
            }),
      ),
    );
  }
}
