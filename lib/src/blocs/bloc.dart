import 'dart:async';
import 'validators.dart';

class Bloc with ValidationMixin {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  Stream<String> get emailStream =>
      this._emailController.stream.transform(validateEmail);
  Stream<String> get passwordStream =>
      this._passwordController.stream.transform(validatePassword);

  Function(String) get changeEmail => this._emailController.sink.add;
  Function(String) get changePassword => this._passwordController.sink.add;

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

final bloc = Bloc();
