import 'package:flutter/material.dart';
import 'package:profile_phase2/screen/phase2_profile/controller/phase2_profile_controller.dart';
import 'package:profile_phase2/screen/phase2_profile/screen/phase2_profile_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => Phase2ProfileController()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Phase2ProfileScreen(),
    );
  }
}
