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
            makeRadio(),
            makeRadioTiles(),
          ],
        ),
      ),
    );
  }

  Widget makeRadio() {
    List<Widget> list = [
      new Radio(
          value: 0,
          groupValue: _val1,
          onChanged: (int? _val1) {
            setState(() {
              if (_val1 != null) {
                this._val1 = _val1;
              }
            });
          }),
      new Radio(
          value: 1,
          groupValue: _val1,
          onChanged: (int? _val1) {
            setState(() {
              if (_val1 != null) {
                this._val1 = _val1;
              }
            });
          }),
      new Radio(
          value: 2,
          groupValue: _val1,
          onChanged: (int? _val1) {
            setState(() {
              if (_val1 != null) {
                this._val1 = _val1;
              }
            });
          })
    ];

    Column column = new Column(
      children: list,
    );
    return column;
  }

  Widget makeRadioTiles() {
    List<Widget> list = [
      new RadioListTile(
        value: 0,
        groupValue: _val2,
        onChanged: (int? _val2) {
          setState(() {
            if (_val2 != null) {
              this._val2 = _val2;
            }
          });
        },
        activeColor: Colors.red,
        controlAffinity: ListTileControlAffinity.trailing,
        title: Text('Item 1'),
        subtitle: Text('sub title'),
      ),
      new RadioListTile(
        value: 1,
        groupValue: _val2,
        onChanged: (int? _val2) {
          setState(() {
            if (_val2 != null) {
              this._val2 = _val2;
            }
          });
        },
        activeColor: Colors.blue,
        controlAffinity: ListTileControlAffinity.trailing,
        title: Text('Item 2'),
        subtitle: Text('sub title'),
      ),
      new RadioListTile(
        value: 2,
        groupValue: _val2,
        onChanged: (int? _val2) {
          setState(() {
            if (_val2 != null) {
              this._val2 = _val2;
            }
          });
        },
        activeColor: Colors.green,
        controlAffinity: ListTileControlAffinity.trailing,
        title: Text('Item 3'),
        subtitle: Text('sub title'),
      )
    ];

    Column column = new Column(
      children: list,
    );
    return column;
  }
}
