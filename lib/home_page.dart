import 'package:base_ui_widgets/help_dialog/help_dialog.dart';
import 'package:base_ui_widgets/help_dialog/help/help_message.dart';
import 'package:flutter/material.dart';

class PageModel {
  final String title;
  final String message;
  final String route;

  PageModel(this.title, this.message, this.route);
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static List pages = [
    PageModel('First page', 'Noting on the first page', '/sample-pages/first-page')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore ui examples'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              child: const Icon(Icons.help),
              onTap: () {
                _showHelpDialog(context);
              },
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: pages.map((pageModel) {
            return listItem(context, pageModel);
          }).toList(),
        ),
      ),
    );
  }

  Widget listItem(BuildContext context, PageModel model) => Card(
    elevation: 5,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
      child: GestureDetector(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              model.message,
              style: const TextStyle(
                  fontSize: 15,
              ),
            )
          ],
        ),
        onTap: () {
          Navigator.of(context).pushNamed(model.route);
        },
      ),
    ),
  );

  Future<void> _showHelpDialog(BuildContext context) => showDialog(context: context, builder: (BuildContext context) {
    return const HelpDialog();
  });

}
