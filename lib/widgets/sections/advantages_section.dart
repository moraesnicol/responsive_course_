import 'package:flutter/material.dart';
import 'package:reponsive_course/breakpoints.dart';

class AdvantagesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildHorizontalAdvantage(String title, String subtitle) {
      return Row(mainAxisSize: MainAxisSize.min, children: [
        Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(height: 8),
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

    Widget buildVerticalAdvantage(String title, String subtitle) {
      return Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        )
      ]);
    }

    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth >= mobileBreakpoint)
        return Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.white))),
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 16,
            spacing: 8,
            children: [
              buildHorizontalAdvantage(
                  '130.000 cursos online', 'Aproveite diversos temas atuais'),
              buildHorizontalAdvantage('Especialistas do mercado',
                  'Encontre o instrutor ideal para você'),
              buildHorizontalAdvantage(
                  'Acesso vitalício', 'Aprenda no seu tempo'),
            ],
          ),
        );

      return Container(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.white))),
        child: Row(
          children: [
            Expanded(
              child: buildVerticalAdvantage(
                  '130.000 cursos online', 'Aproveite diversos temas atuais'),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: buildVerticalAdvantage('Especialistas do mercado',
                  'Encontre o instrutor ideal para você'),
            ),
            const SizedBox(width: 4),
            Expanded(
                child: buildVerticalAdvantage(
                    'Acesso vitalício para sempre', 'Aprenda no seu tempo')),
          ],
        ),
      );
    });
  }
}
