import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:test_apple_auth/src/routes/router.gr.dart';
import 'package:test_apple_auth/src/utils/helpers.dart';

class AuthState<T extends StatefulWidget> extends SupabaseAuthState<T> {
  @override
  void onUnauthenticated() {
    if (mounted) {
      AutoRouter.of(context)
          .pushAndPopUntil(LoginPageRoute(), predicate: (_) => false);
    }
  }

  @override
  void onAuthenticated(Session session) {
    if (mounted) {
      AutoRouter.of(context)
          .pushAndPopUntil(const HomePageRoute(), predicate: (_) => false);
    }
  }

  @override
  void onPasswordRecovery(Session session) {}

  @override
  void onErrorAuthenticating(String message) {
    context.showErrorSnackBar(message: message);
  }
}
