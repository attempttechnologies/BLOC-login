import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          this._emailField(),
          this._passwordField(),
          Container(
            margin: EdgeInsets.only(top: 25.0),
          ),
          this._submitButton(),
        ],
      ),
    );
  }

  TextField _emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'you@example.com',
        labelText: 'Email address',
      ),
    );
  }

  TextField _passwordField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(labelText: 'Password'),
    );
  }

  RaisedButton _submitButton() {
    return RaisedButton(
      onPressed: () {},
      child: Text('Log in'),
      color: Colors.blue,
    );
  }
}
