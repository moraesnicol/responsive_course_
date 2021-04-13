import 'package:flutter/material.dart';

class AdvantagesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildAdvantage(String title, String subtitle) {
      return Wrap(
        children: [
          buildAdvantage(
              '130.000 cursos online', 'Aproveite diversos temas atuais'),
          buildAdvantage('Especialistas do mercado',
              'Encontre o instrutor ideal para você'),
          buildAdvantage('Acesso vitalício', 'Aprenda no seu tempo'),
        ],
      );
    }
  }
}
