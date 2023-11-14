import 'package:flutter/material.dart';
import 'package:pilot_bazar/screens/demo_home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        unselectedWidgetColor: Colors.white, // Set the border color to white
      ),
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        body: DemoPage(),
      ),
    );
  }
}
