import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Dotenv init
  await dotenv.load(fileName: "assets/.env");

  // Supabase
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL'],
    anonKey: dotenv.env['SUPABASE_ANON_KEY'],
    authCallbackUrlHostname: 'login-callback',
    debug: kDebugMode,
  );

  runApp(MyApp());
}
