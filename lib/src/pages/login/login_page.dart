import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart' as supabase;
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:test_apple_auth/src/routes/auth_state.dart';
import 'package:test_apple_auth/src/utils/constants.dart';

class LoginPage extends StatefulWidget {
  final Function(bool success)? onResult;

  const LoginPage({Key? key, this.onResult}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends AuthState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () => _signInApple(),
              child: const Text('Sign In With Apple'))
        ],
      )),
    );
  }

  Future _signInApple() => Supabase.instance.client.auth.signInWithProvider(
        supabase.Provider.apple,
        options: supabase.AuthOptions(
          redirectTo: appAuthRedirectUri,
        ),
      );
}
