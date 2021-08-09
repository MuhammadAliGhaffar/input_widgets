import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  String value = '';

  void onChanged(String value) {
    setState(() {
      this.value = 'Change :$value';
    });
  }

  void onSubmit(String value) {
    setState(() {
      this.value = 'Submit :$value';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Input Widgets'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text(this.value),
            new TextField(
              decoration: new InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter Username',
                  icon: new Icon(Icons.person)),
              autocorrect: true,
              autofocus: true,
              keyboardType: TextInputType.text,//You can change type with no ,email etc
              onChanged: onChanged,
              onSubmitted: onSubmit,
            )
          ],
        ),
      ),
    );
  }
}
