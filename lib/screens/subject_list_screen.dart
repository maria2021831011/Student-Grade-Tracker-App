import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/subject_provider.dart';

class SubjectListScreen extends StatelessWidget {
  const SubjectListScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Consumer<SubjectProvider>(

      builder: (context, subjectProvider, child) {

        if(subjectProvider.subjects.isEmpty){

          return const Center(
            child: Text(
              "No Subjects Added",
              style: TextStyle(fontSize: 20),
            ),
          );

        }

        return ListView.builder(

          itemCount: subjectProvider.subjects.length,

          itemBuilder: (context,index){

            final subject =
            subjectProvider.subjects[index];

            return Dismissible(

              key: Key(subject.name),

              background: Container(

                color: Colors.red,

                alignment: Alignment.centerRight,

                padding: const EdgeInsets.only(right:20),

                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),

              ),

              onDismissed: (_){

                context
                    .read<SubjectProvider>()
                    .removeSubject(index);

                ScaffoldMessenger.of(context)
                    .showSnackBar(

                  SnackBar(
                    content:
                    Text("${subject.name} Deleted"),
                  ),

                );

              },

              child: Card(

                margin: const EdgeInsets.all(10),

                child: ListTile(

                  leading: const CircleAvatar(

                    child: Icon(Icons.book),

                  ),

                  title: Text(subject.name),

                  subtitle: Text(
                      "Mark : ${subject.mark}"
                  ),

                  trailing: Text(

                    subject.grade,

                    style: const TextStyle(

                      fontSize: 18,

                      fontWeight: FontWeight.bold,

                    ),

                  ),

                ),

              ),

            );

          },

        );

      },

    );

  }
}