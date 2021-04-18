import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
            'https://img-a.udemycdn.com/course/240x135/1927044_a831.jpg?SN2TWRj8BuSsrojVZwejeboDehHklCb0yBOJgrbAVkXbml9vl_iA8aABV02b6Nvw-BiNZ8pbjZFhwVShsHJ_YNUV0JGEK2szmaQw5_oUhyv4Ne0Bd1iRJzu8lEY9PQ',
            fit: BoxFit.fitWidth),
        const SizedBox(height: 4),
        Flexible(
          child: LayoutBuilder(builder: (_, constraints) {
            return AutoSizeText(
              'Programação em Python do básico ao avançado',
              minFontSize: 3,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
              ),
            );
          }),
        ),
        Text('Gabriel Nicol', style: TextStyle(color: Colors.grey[400])),
        Text('R\$22,90',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.white,
            ))
      ],
    );
  }
}
