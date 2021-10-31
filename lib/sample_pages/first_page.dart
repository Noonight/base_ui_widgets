import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.grey,
            ),
            Center(
              widthFactor: double.infinity,
                child: Text('First Page', style: Theme.of(context).textTheme.headline2)
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Back', style: Theme.of(context).textTheme.headline4),
                      const Icon(Icons.subdirectory_arrow_left),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
