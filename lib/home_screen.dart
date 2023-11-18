import 'package:flutter/material.dart';
import 'package:provider_examples/RoundButton.dart';
import 'package:provider_examples/login%20with%20provider/login_screen.dart';
import 'package:provider_examples/screens/count_screen.dart';
import 'package:provider_examples/screens/multi_provider_screen.dart';
import 'package:provider_examples/screens/theme_screen.dart';
import 'package:provider_examples/screens/value_notifier_listner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider State Management'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              RoundButton(
                height: 50,
                title: 'Provider Count Example',
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CountScreen()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              RoundButton(
                height: 50,
                title: 'Multi Provider Example',
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MultiProvider()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              RoundButton(
                height: 50,
                title: 'Light and Dark Theme with Provider',
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThemeScreen()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              RoundButton(
                height: 50,
                title: 'Login Api with Provider',
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              RoundButton(
                height: 50,
                title: 'Using Stateless as Stateful',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotifyListnerScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
