// ignore_for_file: unused_import, await_only_futures

import 'package:e_commerce/Pages/HomePage/HomePage.dart';
import 'package:e_commerce/Pages/SignInPage/SignInPage.dart';
import 'package:e_commerce/providers/LoginScreen_Provider.dart';
import 'package:e_commerce/providers/SignInScreen_Provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Pages/LoginPage/LoginPage.dart';

void main() async {
  /// starting of an app.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? isHome;
  Widget? homeWidget;
  @override
  void initState() {
    checkHome();
    super.initState();
  }

  void checkHome() async {
    final Future<SharedPreferences> preferences =
        SharedPreferences.getInstance();
    final prefs = await preferences;
    isHome = await prefs.getBool('user');
    if (isHome == true) {
      homeWidget = const HomePage();
      setState(() {});
    } else {
      homeWidget = const LoginPage();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    /// using multi provider for better management.
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SignInProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        /// setting themes for entire apps.
        theme: ThemeData(
          backgroundColor: const Color(0xff201A30),
          scaffoldBackgroundColor: const Color(0xff201A30),
        ),

        /// first page of app.
        /// This must be login page.
        home: homeWidget,
      ),
    );
  }
}
