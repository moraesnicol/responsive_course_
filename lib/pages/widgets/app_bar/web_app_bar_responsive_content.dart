import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(
      // ignore: missing_return
      builder: (context, constraints) {
        print('biggest ${constraints.biggest} smaller ${constraints.smallest}');

        return Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius:
                      //   BorderRadius.only(topLeft: const Radius.circular(20))
                      BorderRadius.horizontal(
                          left: Radius.circular(40),
                          right: Radius.circular(40)),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      color: Colors.grey[500],
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Pesquise por qualquer coisa',
                          isCollapsed: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (constraints.maxWidth >= 400) const SizedBox(width: 32),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                child: Text('Udemy for Bussines')),
            if (constraints.maxWidth >= 500) const SizedBox(width: 15),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                child: Text('Ensine na Udemy')),
          ],
        );
      },
    ));
  }
}
