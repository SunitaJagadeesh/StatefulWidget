/*Try To Create an Flutter Application, with Homepage
Title as BRR Mobile Team TAKE  Switch component,
On performing ON and OFF will flip the color of the screen*/


import 'package:flutter/material.dart';

void main() {
  runApp(SwitchButton());
}


class  SwitchButton extends StatefulWidget {
 // SwitchButton() : super();
  //final String title = "Switch App";

  @override
  _SwitchClassState createState() => _SwitchClassState();
}

class _SwitchClassState extends State<SwitchButton>
{

  bool switchState = false;

  switchValueChanged(bool newVal)
  {
    setState(()
    {
      print('Switch value change called.');
      if(newVal)
          print('Switch is On');
      else
        print('Switch is Off.');
      switchState = newVal;
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

       home:  Scaffold(
         //backgroundColor: Colors.blue,
         backgroundColor: switchState ? Colors.yellow : Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text("Brr Mobile team"),
          ),
          body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Switch(
                      value: switchState,
                      onChanged: (newVal) {
                        switchValueChanged(newVal);
                      })
                ],
              )
          ),
        ),
    );
  }
}
