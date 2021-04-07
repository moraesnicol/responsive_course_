import 'dart:html';

import 'package:flutter/material.dart';
import 'package:reponsive_course/breakpoints.dart';
import 'package:reponsive_course/pages/widgets/app_bar/mobile_app_bar.dart';
import 'package:reponsive_course/pages/widgets/app_bar/web_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: missing_return
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          appBar: constraints.maxWidth < mobileBreakpoint
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56),
                )
              : PreferredSize(
                  child: WebAppBar(), preferredSize: Size(double.infinity, 70)),
          drawer: constraints.maxWidth < mobileBreakpoint ? Drawer() : null,
          body: SizedBox(
            child: Container(
              color: Colors.amber,
            ),
          ));
    });
  }
}
