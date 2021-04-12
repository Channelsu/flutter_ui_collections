import 'package:flutter/material.dart';
import 'package:flutteruicollections/models/panel.dart';

class UiSampleListScreen extends StatefulWidget {
  @override
  _UiSampleListScreenState createState() => _UiSampleListScreenState();
}

class _UiSampleListScreenState extends State<UiSampleListScreen> {

  List<Panel> _panels = [
    Panel(title: 'Buttons', body: 'body1'),
    Panel(title: 'Layouts', body: 'body2'),
    Panel(title: 'Animations', body: 'body3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Collections'),
        backgroundColor: Colors.lightBlue,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
        actions: <Widget>[
          Icon(Icons.settings)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: <Widget>[
            Card(
              color: Colors.lightBlue[100],
              child: ExpansionTile(
                title: Text('リスト'),
                children: <Widget>[
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('    FlatButton'),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('    FlatButton'),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('    FlatButton'),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('    FlatButton'),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('    FlatButton'),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.lightBlue[100],
              child: ExpansionTile(
                title: Text('ログイン画面'),
                children: <Widget>[
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('    FlatButton'),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('    FlatButton'),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('    FlatButton'),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('    FlatButton'),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('    FlatButton'),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.lightBlue[100],
              child: ExpansionTile(
                title: Text('設定'),
                children: <Widget>[
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('    FlatButton'),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('    FlatButton'),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('    FlatButton'),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('    FlatButton'),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('    FlatButton'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
