import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class ButtonsList extends StatefulWidget {
  _ButtonsListState createState() => _ButtonsListState();
}

class _ButtonsListState extends State<ButtonsList> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String dropdownValue = 'India';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,      
      body:
      SafeArea(
        top: true,
        bottom: true,
        child: Center(child:
          SingleChildScrollView(        
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                //***********************Disabled Button*************************
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: RaisedButton(
                    onPressed: null,
                    padding: EdgeInsets.all(15),
                    child: const Text('Disabled Button'),
                  ),
                ),

                //***********************Enabled Button*************************
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: RaisedButton(
                    onPressed: () {
                      _displaySnackBar(context, "Enabled Button Pressed..!");
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    splashColor: Colors.blue[100],
                    padding: EdgeInsets.all(15),
                    child: const Text('Enabled Button'),
                  ),
                ),


                //***********************Cupertino Button*************************
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CupertinoButton(
                    onPressed: () {
                      _displaySnackBar(context, "Cupertino Button Pressed..!");
                    },
                    color: Colors.blue,
                    padding: EdgeInsets.all(15),
                    child: const Text('Cupertino Button'),
                  ),
                ),



                //***********************Rounded Button*************************
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: RaisedButton(
                    onPressed: () {
                      _displaySnackBar(context, "Rounded Button Pressed..!");
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    splashColor: Colors.blue[100],
                    padding: EdgeInsets.all(15),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(25.0)),
                    child: const Text('Rounded Button'),
                  ),
                ),

                //***********************Outline Button*************************
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: new OutlineButton(
                      child: new Text("Outline Button"),
                      onPressed: () {
                        _displaySnackBar(context, "Outline Button Pressed..!");
                      },
                      // color: Colors.blue,
                      textColor: Colors.blue,
                      padding: EdgeInsets.all(15),
                      borderSide: BorderSide(color: Colors.blue),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0))),
                ),

                //***********************Gradient Button*************************

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    splashColor: Colors.grey,
                    padding: const EdgeInsets.all(0.0),
                    child: Container(

                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[Colors.blue, Colors.deepPurple],
                        ),
                      ),
                      padding: const EdgeInsets.all(15.0),
                      child: Text('Gradient Button'),
                    ),
                    onPressed: () {
                      _displaySnackBar(context, "Gradient Button Pressed..!");
                    },
                  ),
                ),

                //***********************Button with text Button*************************
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: new RaisedButton(
                    color: Colors.blue,
                    padding: EdgeInsets.all(10),
                    onPressed: () {},
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Icon(
                          Icons.lightbulb_outline,
                          color: Colors.white,
                        ),
                        new Text(
                          'Button with text and icon!',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),


                //***********************Flat Button*************************
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: new FlatButton(
                      onPressed: () {
                        _displaySnackBar(context, "Flat Button Pressed..!");
                      },
                      textColor: Colors.blue,
                      //  disabledColor: Colors.green[100],
                      child: Text(
                        "Flat Button",
                        style: TextStyle(fontSize: 16),
                      )),
                ),



                //***********************Icon Button*************************
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: new ClipOval(
                    child: Container(
                      color: Colors.blue,
                      child: new IconButton(
                        icon: Icon(
                          Icons.volume_up,
                          color: Colors.white,
                        ),
                        tooltip: 'Icon Button',
                        onPressed: () {
                          _displaySnackBar(context, "Icon Button Pressed..!");
                        },
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Divider(),
                //********************Social Buttons*************************//

                SizedBox(
                  height: 10,
                ),

                //***********************Email Button*************************
                SignInButtonBuilder(

                  text: 'Get going with Email',
                  icon: Icons.email,
                  onPressed: () {},
                  backgroundColor: Colors.blueGrey[700],

                ),

                //***********************Google Button*************************
                SignInButton(
                  Buttons.Google,
                  onPressed: () {},
                ),

                SizedBox(
                  height: 10,
                ),

                //***********************Facebook Button*************************
                SignInButton(
                  Buttons.Facebook,
                  onPressed: () {},
                ),

                SizedBox(
                  height: 10,
                ),

                //***********************Github Button*************************
                SignInButton(
                  Buttons.GitHub,
                  onPressed: () {},
                ),

                SizedBox(
                  height: 10,
                ),

                //***********************Pinterest Button*************************
                SignInButton(
                  Buttons.Pinterest,
                  text: "Sign up with Pinterest",
                  onPressed: () {},
                ),

                SizedBox(
                  height: 30,
                ),
              ],
            ),
          )),
      )
    );
  }

  _displaySnackBar(BuildContext context, String text) {
    final snackBar = SnackBar(content: Text(text));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
