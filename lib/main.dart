import 'package:flutter/material.dart';
import 'package:wake_kub_frontend/screens/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wake Kub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: const ColorScheme(
        //     brightness: Brightness.light,
        //     primary: Color.fromARGB(255, 255, 0, 0),
        //     onPrimary: Color(0xFFFED8DF),
        //     secondary: Color(0xFFFED8DF),
        //     onSecondary: Color.fromARGB(255, 249, 31, 147),
        //     error: Color(0xFFFF8DC7),
        //     onError: Color(0xFFFF8DC7),
        //     background: Color(0xFFFED8DF),
        //     onBackground: Color(0xFFFED8DF),
        //     surface: Color.fromARGB(255, 232, 36, 183),
        //     onSurface: Color.fromARGB(255, 18, 18, 18)),
        colorSchemeSeed: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'WAKE KUB'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginScreen(),
    );
  }
}
