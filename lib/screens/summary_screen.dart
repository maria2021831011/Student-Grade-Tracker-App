import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/subject_provider.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Consumer<SubjectProvider>(

      builder: (context, subjectProvider, child) {

        return Padding(

          padding: const EdgeInsets.all(20),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Card(
                child: ListTile(
                  title: const Text("Total Subjects"),
                  trailing: Text(
                    subjectProvider.totalSubjects.toString(),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Card(
                child: ListTile(
                  title: const Text("Average Mark"),
                  trailing: Text(
                    subjectProvider.averageMark
                        .toStringAsFixed(2),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Card(
                child: ListTile(
                  title: const Text("Overall Grade"),
                  trailing: Text(
                    subjectProvider.overallGrade,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Card(
                child: ListTile(
                  title: const Text("Passing Subjects"),
                  trailing: Text(
                    subjectProvider
                        .passingSubjects
                        .length
                        .toString(),
                  ),
                ),
              ),

            ],

          ),

        );

      },

    );

  }
}