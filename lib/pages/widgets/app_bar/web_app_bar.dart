import 'package:flutter/material.dart';

import 'web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 70,
      title: Row(
        children: [
          Text('Udemy',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          const SizedBox(width: 32),
          Text(
            'Categorias',
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(width: 32),
          WebAppBarResponsiveContent(), //searchbar

          const SizedBox(width: 28),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          const SizedBox(width: 24),
          SizedBox(
            height: 38,
            width: 95,
            child: OutlinedButton(
              onPressed: () {},
              child: Text("Fazer login"),
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white, width: 2),
                  textStyle: TextStyle(color: Colors.white),
                  primary: Colors.white,
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.all(10)),
              autofocus: true,
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 40,
            width: 100,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Cadastre-se',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreenAccent[400],
                  padding: EdgeInsets.all(10)),
            ),
          )
        ],
      ),
    );
  }
}
