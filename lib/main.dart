import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stripesafepay/firebase_options.dart';
import 'package:stripesafepay/theme/theme_constants.dart';
import 'package:stripesafepay/views/landing.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  GoogleFonts.config.allowRuntimeFetching = false;

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const StripeSafePayApp());
}

class StripeSafePayApp extends StatefulWidget {
  const StripeSafePayApp({Key? key}) : super(key: key);

  @override
  State<StripeSafePayApp> createState() => _StripeSafePayAppState();
}

class _StripeSafePayAppState extends State<StripeSafePayApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stripe SafePay',
      theme: lightTheme,
      home: const LandingScreen(title: 'Stripe SafePay App'),
    );
  }
}
