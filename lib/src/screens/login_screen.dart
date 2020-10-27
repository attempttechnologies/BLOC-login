import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

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

  StreamBuilder<String> _emailField() {
    return StreamBuilder(
      stream: bloc.emailStream,
      builder: (context, snapshot) {
        return TextField(
          onChanged: (value) {
            bloc.changeEmail(value);
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'you@example.com',
            labelText: 'Email address',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  StreamBuilder<String> _passwordField() {
    return StreamBuilder(
      stream: bloc.passwordStream,
      builder: (context, snapshot) {
        return TextField(
          onChanged: (value) {
            bloc.changePassword(value);
          },
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            errorText: snapshot.error,
          ),
        );
      },
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
