import 'package:flutter/material.dart';
import 'package:talawa_sample_ui/views/widgets/custom_buttons.dart';

import '../../app_theme.dart';

class CustomBottomBar extends StatelessWidget {
  final Widget child;

  const CustomBottomBar({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80.0,
        decoration: BoxDecoration(
          color: TalawaTheme.buildLightTheme().backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, -2),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: child);
  }
}
