import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/navigation_provider.dart';
import '../providers/theme_provider.dart';

import 'add_subject_screen.dart';
import 'subject_list_screen.dart';
import 'summary_screen.dart';

class NavigationScreen extends StatelessWidget {
  NavigationScreen({super.key});

  final List<Widget> pages =  [

    AddSubjectScreen(),

    SubjectListScreen(),

    SummaryScreen(),

  ];

  @override
  Widget build(BuildContext context) {

    final navigationProvider =
    context.watch<NavigationProvider>();

    return Scaffold(

      appBar: AppBar(

        title: const Text("Student Grade Tracker"),
        actions: [

          Consumer<ThemeProvider>(

            builder: (context, themeProvider, child) {

              return Switch(

                value: themeProvider.isDark,

                onChanged: (value) {

                  themeProvider.toggleTheme(value);

                },

              );

            },

          )

        ],
      ),

      body: pages[navigationProvider.currentIndex],

      bottomNavigationBar: BottomNavigationBar(

        currentIndex:
        navigationProvider.currentIndex,

        onTap: (index) {

          context
              .read<NavigationProvider>()
              .changeIndex(index);

        },

        items: const [

          BottomNavigationBarItem(

            icon: Icon(Icons.add),

            label: "Add",

          ),

          BottomNavigationBarItem(

            icon: Icon(Icons.list),

            label: "Subjects",

          ),

          BottomNavigationBarItem(

            icon: Icon(Icons.bar_chart),

            label: "Summary",

          ),

        ],

      ),

    );
  }
}