import 'package:flutter/material.dart';
import 'package:reponsive_course/breakpoints.dart';

import '../custom_search_field.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= 1200) {
          return AspectRatio(
            aspectRatio: 3.5,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.5,
                  child: Image.asset(
                    'assets/coverfluemy.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                      color: Colors.black,
                      elevation: 8,
                      child: Container(
                        padding: const EdgeInsets.all(22),
                        width: 450,
                        child: Column(
                          children: [
                            Text(
                              'Aprenda Flutter no seu tempo',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Estude qualquer tema, a qualquer hora. Explore milhares de cursos.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            const SizedBox(height: 8),
                            CustomSearchField(),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          );
        }

        if (maxWidth >= mobileBreakpoint) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/coverfluemy.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Card(
                      color: Colors.black,
                      elevation: 8,
                      child: Container(
                        padding: const EdgeInsets.all(22),
                        width: 350,
                        child: Column(
                          children: [
                            Text(
                              'Aprenda Flutter no seu tempo',
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Estude qualquer tema, a qualquer hora. Explore milhares de cursos.',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            const SizedBox(height: 8),
                            CustomSearchField(),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          );
        }

        return Container();
      },
    );
  }
}
