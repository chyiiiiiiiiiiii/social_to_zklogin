import 'package:flutter/material.dart';
import 'package:social_to_zklogin/home_page.dart';

const shinamiAccessKey =
    String.fromEnvironment('shinamiAccessKey');
const twitchClientId =
    String.fromEnvironment('twitchClientId');

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
