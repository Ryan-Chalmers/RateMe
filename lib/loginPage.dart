import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget{


  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final formKey = new GlobalKey<FormState>();

  String _email;
  String _password;

  bool validateAndSave(){
    final form = formKey.currentState;
    if (form.validate()){
      form.save();
      print('form is valid. Email: $_email Password $_password');
      return true;
    } else {
      print('form is invalid. Email: $_email Password $_password');
      return false;
    }
  }

  void validateAndSubmit(){
//    if (validateAndSave())

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text( "Login"),
      ),
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child: new Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new TextFormField(
                decoration: new InputDecoration(labelText: 'Email'),
                validator: (value) => value.isEmpty ? 'email cant\'t be empty' : null,
                onSaved: (value) => _email = value,
              ),
              new TextFormField(
                decoration: new InputDecoration(labelText: 'Password '),
                obscureText: true,
                validator: (value) => value.isEmpty ? 'email cant\'t be empty' : null,
                onSaved: (value) => _password =value,
              ),
              new RaisedButton(
                  child: new Text('Login', style: new TextStyle(fontSize: 20.0)),
                  onPressed: validateAndSubmit)
            ],
          ))
      ),
    );
  }
}