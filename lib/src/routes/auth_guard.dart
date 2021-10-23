import 'package:auto_route/auto_route.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:test_apple_auth/src/routes/router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final loggedIn = Supabase.instance.client.auth.currentUser != null;
    if (loggedIn) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      await router.push(LoginPageRoute(onResult: (success) {
        // if success == true the navigation will be resumed
        // else it will be aborted
        resolver.next(success);
      }));
    }
  }
}
