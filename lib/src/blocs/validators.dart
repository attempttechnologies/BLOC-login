import 'dart:async';

class ValidationMixin {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    // ignore: top_level_function_literal_block
    handleData: (emailStream, sink) {
      if (emailStream.contains('@')) {
        sink.add(emailStream);
      } else {
        sink.addError('Enter a valid email');
      }
    },
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (passwordStream, sink) {
      if (passwordStream.length > 3) {
        sink.add(passwordStream);
      } else {
        sink.addError('Password must be at least four characters');
      }
    },
  );
}
