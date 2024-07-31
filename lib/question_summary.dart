import 'package:flutter/material.dart';
import 'package:quiz_app/summary_data.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.suummaryData, {super.key});

  final List<Map<String, Object>> suummaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
          children: suummaryData.map(
            (data) {
              return SummaryData(data: data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
