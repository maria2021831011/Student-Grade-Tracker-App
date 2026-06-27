import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/subject_provider.dart';

class AddSubjectScreen extends StatelessWidget {

  AddSubjectScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController =
  TextEditingController();

  final TextEditingController markController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.all(20),

      child: Form(

        key: _formKey,

        child: Column(

          children: [

            TextFormField(

              controller: nameController,

              decoration: const InputDecoration(

                labelText: "Subject Name",

                border: OutlineInputBorder(),

              ),

              validator: (value){

                if(value==null || value.trim().isEmpty){

                  return "Enter Subject Name";

                }

                return null;

              },

            ),

            const SizedBox(height:20),

            TextFormField(

              controller: markController,

              keyboardType: TextInputType.number,

              decoration: const InputDecoration(

                labelText: "Marks",

                border: OutlineInputBorder(),

              ),

              validator: (value){

                if(value==null || value.isEmpty){

                  return "Enter Marks";

                }

                double? mark = double.tryParse(value);

                if(mark==null){

                  return "Invalid Number";

                }

                if(mark<0 || mark>100){

                  return "Marks must be between 0 and 100";

                }

                return null;

              },

            ),

            const SizedBox(height:25),

            SizedBox(

              width: double.infinity,

              height: 50,

              child: ElevatedButton(

                onPressed: (){

                  if(_formKey.currentState!.validate()){

                    context
                        .read<SubjectProvider>()
                        .addSubject(

                      nameController.text,

                      double.parse(markController.text),

                    );

                    ScaffoldMessenger.of(context).showSnackBar(

                      const SnackBar(

                        content: Text("Subject Added"),

                      ),

                    );

                    nameController.clear();

                    markController.clear();

                  }

                },

                child: const Text("Add Subject"),

              ),

            )

          ],

        ),

      ),

    );

  }

}