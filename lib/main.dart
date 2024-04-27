import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trendy_threads/firebase_options.dart';
import 'package:trendy_threads/provider/auth_provider.dart';
import 'package:trendy_threads/view/detailed_screen.dart/detailed_screen.dart';
import 'package:trendy_threads/view/splashscreen/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Authprovider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DetailedScreen(),
      ),
    );
  }
}
