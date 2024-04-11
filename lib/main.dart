import 'package:store_application/register_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:store_application/splash_screen.dart';
import 'package:store_application/home_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  await Supabase.initialize(
    url: 'https://wzmdhsigrbbmiiaudjst.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind6bWRoc2lncmJibWlpYXVkanN0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIzOTg0MDAsImV4cCI6MjAyNzk3NDQwMH0.y9-IYsHoQOwvThoNhRkV_FJ0AdjARLjHmUU-IK85QAs',
  );
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('fa', 'IR'),
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      title: 'شناگرشو',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/second': (context) => const RegisterScreen(),
        '/third': (context) => const HomeScreen(),
        '/fourth': (context) => const LoginScreen(),
      },
    );
  }
}
