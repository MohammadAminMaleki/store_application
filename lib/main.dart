import 'package:flutter/services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:store_application/home_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://wzmdhsigrbbmiiaudjst.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind6bWRoc2lncmJibWlpYXVkanN0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIzOTg0MDAsImV4cCI6MjAyNzk3NDQwMH0.y9-IYsHoQOwvThoNhRkV_FJ0AdjARLjHmUU-IK85QAs',
  );
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  final supabase = Supabase.instance.client;
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'شناگرشو',
      home: HomeScreen(),
    );
  }
}
