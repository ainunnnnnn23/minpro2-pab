import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'pages/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");

  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dompet Nangis",

      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: const Color(0xFFFFF5F7),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFE4EC),
          foregroundColor: Colors.black,
          centerTitle: true,
        ),

        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(
          backgroundColor: Colors.pink,
        ),
      ),

      home: const HomePage(),
    );
  }
}