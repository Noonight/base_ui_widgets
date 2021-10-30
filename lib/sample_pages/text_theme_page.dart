import 'package:flutter/material.dart';

class TextThemePage extends StatefulWidget {
  const TextThemePage({Key? key}) : super(key: key);

  final double allInsets = 8.0;

  @override
  _TextThemePageState createState() => _TextThemePageState();
}

class _TextThemePageState extends State<TextThemePage> {

  double _textSize = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.subdirectory_arrow_left),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(widget.allInsets),
              child: ListView(
                children: [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(widget.allInsets),
                        child: Text('Text theme', style: Theme.of(context).textTheme.headline6)
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(widget.allInsets),
                      child: Column(
                        children: [
                          Text('h1', style: Theme.of(context).textTheme.headline1),
                          Text('h2', style: Theme.of(context).textTheme.headline2),
                          Text('h3', style: Theme.of(context).textTheme.headline3),
                          Text('h4', style: Theme.of(context).textTheme.headline4),
                          Text('h5', style: Theme.of(context).textTheme.headline5),
                          Text('h6', style: Theme.of(context).textTheme.headline6),
                          Container(height: 0.5, color: Colors.black, margin: EdgeInsets.all(widget.allInsets)),
                          Text('bodyText1', style: Theme.of(context).textTheme.bodyText1),
                          Text('bodyText2', style: Theme.of(context).textTheme.bodyText2),
                          Container(height: 0.5, color: Colors.black, margin: EdgeInsets.all(widget.allInsets)),
                          Text('button', style: Theme.of(context).textTheme.button),
                          Text('caption', style: Theme.of(context).textTheme.caption),
                          Text('overline', style: Theme.of(context).textTheme.overline),
                          Container(height: 0.5, color: Colors.black, margin: EdgeInsets.all(widget.allInsets)),
                          Text('subtitle1', style: Theme.of(context).textTheme.subtitle1),
                          Text('subtitle2', style: Theme.of(context).textTheme.subtitle2),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                        padding: EdgeInsets.all(widget.allInsets),
                        child: Text('Text style', style: Theme.of(context).textTheme.headline6)
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(widget.allInsets),
                      child: Column(
                        children: const [
                          Text('normal', style: TextStyle(fontStyle: FontStyle.normal)),
                          Text('italic', style: TextStyle(fontStyle: FontStyle.italic))
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                        padding: EdgeInsets.all(widget.allInsets),
                        child: Text('Text weight', style: Theme.of(context).textTheme.headline6)
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(widget.allInsets),
                      child: Column(
                        children: const [
                          Text('normal', style: TextStyle(fontWeight: FontWeight.normal)),
                          Text('bold', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(widget.allInsets),
                      child: Column(
                        children: FontWeight.values.map((e) => Text(e.toString().substring(e.toString().indexOf('.') + 1), style: TextStyle(fontWeight: e),)).toList()
                      ),
                    ),
                  )
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle textStyle() => TextStyle(
    fontSize: _textSize
  );
}
