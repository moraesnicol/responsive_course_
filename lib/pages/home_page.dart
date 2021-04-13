import 'dart:html';

import 'package:flutter/material.dart';
import 'package:reponsive_course/breakpoints.dart';
import 'package:reponsive_course/widgets/app_bar/mobile_app_bar.dart';
import 'package:reponsive_course/widgets/app_bar/web_app_bar.dart';
import 'package:reponsive_course/widgets/sections/advantages_section.dart';
import 'package:reponsive_course/widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: missing_return
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          backgroundColor: Colors.black87,
          appBar: constraints.maxWidth < mobileBreakpoint
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56),
                )
              : PreferredSize(
                  child: WebAppBar(), preferredSize: Size(double.infinity, 70)),
          drawer: constraints.maxWidth < mobileBreakpoint ? Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1400),
              child: ListView(children: [
                TopSection(),
                AdvantagesSection(),
                
              ]),
            ),
          ));
    });
  }
}
