import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_examples/home_screen.dart';
import 'package:provider_examples/provider/count_provider.dart';
import 'package:provider_examples/provider/multi_provider.dart';
import 'package:provider_examples/provider/theme_provider.dart';

import 'login with provider/auth_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => MiultiProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: Builder(builder: (BuildContext context) {
        final themeChanger = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: Provider.of<ThemeProvider>(context).themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.blue,
          ),
          darkTheme: ThemeData(brightness: Brightness.dark),
          home: HomeScreen(),
        );
      }),
    );
  }
}
