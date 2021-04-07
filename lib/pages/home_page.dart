import 'package:flutter/material.dart';
import 'package:reponsive_course/pages/widgets/app_bar/mobile_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: missing_return
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: constraints.maxWidth < 800 ? MobileAppBar() : AppBar(),
       );
     }
    );
  }
}
