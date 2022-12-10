import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'db_provider.dart';
import 'home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return runApp(
    MultiProvider(
      providers: [
      ChangeNotifierProvider(
      child: const MyApp(),
      create: (context) => DbProvider(),),
      ChangeNotifierProvider(
      child: const MyApp(),
      create: (context) => ThemeProvider(isDarkMode : prefs.getBool("isDarkTheme") ?? false),),
    ],
      child: const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: ((context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "WaroengKu",
          theme: themeProvider.getTheme,
          home: const HomePage(),
        );
      }),
    );
  }
}