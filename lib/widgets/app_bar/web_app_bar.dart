import 'package:flutter/material.dart';

import 'web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text(
                'Fludemy',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          const SizedBox(width: 32),
          TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text(
                'Categorias',
                style: TextStyle(fontSize: 14),
              )),
          const SizedBox(width: 32),

          WebAppBarResponsiveContent(), //searchbar
          const SizedBox(width: 24),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          const SizedBox(width: 24),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              onPressed: () {},
              child: Text("Fazer login"),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.white, width: 2),
                textStyle: TextStyle(color: Colors.white),
                primary: Colors.white,
                backgroundColor: Colors.black,
              ),
              autofocus: true,
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Cadastre-se',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightGreenAccent[400],
              ),
            ),
          )
        ],
      ),
    );
  }
}
