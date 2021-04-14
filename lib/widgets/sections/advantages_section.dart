import 'package:flutter/material.dart';

class AdvantagesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildAdvantage(String title, String subtitle) {
      return Row(mainAxisSize: MainAxisSize.min, children: [
        Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(width: 8),
        Column(
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(color: Colors.white),
            )
          ],
        )
      ]);
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white))),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        spacing: 8,
        children: [
          buildAdvantage(
              '130.000 cursos online', 'Aproveite diversos temas atuais'),
          buildAdvantage('Especialistas do mercado',
              'Encontre o instrutor ideal para você'),
          buildAdvantage('Acesso vitalício', 'Aprenda no seu tempo'),
        ],
      ),
    );
  }
}
