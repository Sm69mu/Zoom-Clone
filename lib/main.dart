import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:Chatty/screens/home.dart';
import 'package:Chatty/screens/login_screen.dart';
// import 'package:video_chat_application/screens/onboarding_screen.dart';
import 'package:Chatty/services/authentication_methods.dart';
import 'firebase_options.dart';

void main() async {
  // Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Chatty ',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 36, 36, 36),
      ),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const Home(),
      },
      home: StreamBuilder(
        stream: AuthenticationMethods().authChanges,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasData) {
            return const Home();
          }

          return const LoginScreen();
        },
      ),
    );
  }
}
