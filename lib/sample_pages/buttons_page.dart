import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  _ButtonsPageState createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Elevated Button', style: Theme.of(context).textTheme.headline6),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ElevatedButton(
                      child: const Text('Default'),
                      onPressed: () { },
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.access_alarms_sharp),
                      label: const Text('Elevated.icon'),
                      onPressed: () { },
                    ),
                    const ElevatedButton(
                      child: Text('Disabled'),
                      onPressed: null,
                    ),
                    ElevatedButton(
                      child: const Text('With rounded shape'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                      ),
                      onPressed: () { },
                    ),
                    ElevatedButton(
                      child: const Text('Just green'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green
                      ),
                      onPressed: () { },
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Text Button', style: Theme.of(context).textTheme.headline6),
              ),
            ),
            // ListView( // horizontal list
            //   scrollDirection: Axis.horizontal,
            //   children: [
            //
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}

