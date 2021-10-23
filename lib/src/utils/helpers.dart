import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_apple_auth/src/utils/constants.dart';

extension ShowSnackBar on BuildContext {
  void showSnackBar({
    required String message,
    Color backgroundColor = Colors.white,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: backgroundColor,
    ));
  }

  void showErrorSnackBar({required String message}) {
    showSnackBar(message: message, backgroundColor: Colors.red);
  }
}

String? get authRedirectUri {
  if (kIsWeb) {
    return null;
  } else {
    return appAuthRedirectUri;
  }
}
