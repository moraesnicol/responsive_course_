import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: missing_return
    return LayoutBuilder(builder: (context, constraints) {
      
      return Scaffold(
        appBar: AppBar(
          backgroundColor: constraints.maxWidth >= 800 ? Colors.redAccent : Colors.blue,

        ),
      );
    }
   );
  } 
}
