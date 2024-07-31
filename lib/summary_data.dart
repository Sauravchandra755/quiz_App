import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_identifier.dart';

class SummaryData extends StatelessWidget {
  const SummaryData({super.key, required this.data});

  final Map<String, Object> data;
  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        data['chosen_answer'].toString() == data['correct_answer'].toString();
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: (data['question_index'] as int) + 1,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['question'] as String,
                  style: GoogleFonts.vt323(
                    color: Colors.white,
                    fontSize: 23,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Your Answer:${data['chosen_answer'].toString()}',
                  style: GoogleFonts.vt323(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Correct Answer:${data['correct_answer'].toString()}',
                  style: GoogleFonts.vt323(
                    color: const Color.fromARGB(255, 202, 171, 252),
                    fontSize: 20,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
