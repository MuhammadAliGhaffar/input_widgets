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

enum SingingCharacter { lafayette, jefferson }

class _State extends State<MyApp> {
  String value = '';
  bool flag1 = false;
  bool flag2 = false;
  SingingCharacter? _character = SingingCharacter.lafayette;

  // void onChanged(String value) {
  //   setState(() {
  //     this.value = 'Change :$value';
  //   });
  // }

  // void onSubmit(String value) {
  //   setState(() {
  //     this.value = 'Submit :$value';
  //   });
  // }

  // void flag1Change(bool? flag) {
  //   setState(() {
  //     if (flag != null) {
  //       setState(() {
  //         this.flag1 = flag;
  //       });
  //     }
  //   });
  // }

  // void flag2Change(bool? flag) {
  //   setState(() {
  //     if (flag != null) {
  //       setState(() {
  //         this.flag2 = flag;
  //       });
  //     }
  //   });
  // }

  int _val1 = 0;
  int _val2 = 0;

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
            // Text(this.value),
            // TextField(
            //   decoration: new InputDecoration(
            //       labelText: 'Username',
            //       hintText: 'Enter Username',
            //       icon: new Icon(Icons.person)),
            //   autocorrect: true,
            //   autofocus: true,
            //   keyboardType: TextInputType.text,
            //   //You can change type with no ,email etc
            //   onChanged: (String value) {
            //     setState(() {
            //       this.value = 'Change :$value';
            //     });
            //   },
            //   onSubmitted: (String value) {
            //     setState(() {
            //       this.value = 'Submit :$value';
            //     });
            //   },
            // ),
            // Text(
            //   'CheckBox Example',
            //   style: TextStyle(fontSize: 17.0),
            // ),
            // Checkbox(
            //     checkColor: Colors.black,
            //     activeColor: Colors.white,
            //     value: this.flag1,
            //     onChanged: (bool? flag) {
            //       setState(() {
            //         if (flag != null) {
            //           setState(() {
            //             this.flag1 = flag;
            //           });
            //         }
            //       });
            //     }),
            // new CheckboxListTile(
            //     title: Text('CheckboxList'),
            //     subtitle: Text('subTitle'),
            //     secondary: new Icon(Icons.person),
            //     controlAffinity: ListTileControlAffinity.leading,
            //     checkColor: Colors.black,
            //     activeColor: Colors.white,
            //     value: this.flag2,
            //     onChanged: (bool? flag) {
            //       setState(() {
            //         if (flag != null) {
            //           setState(() {
            //             this.flag2 = flag;
            //           });
            //         }
            //       });
            //     }),
            ListTile(
              title: const Text('Lafayette'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.lafayette,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Thomas Jefferson'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.jefferson,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
