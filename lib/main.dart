import 'package:flutter_web/material.dart';
import 'package:raviportfolio/particle_background.dart';
import 'package:raviportfolio/profile_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        fontFamily: "GoogleSansRegular",
      ),
      home: Container(
        decoration: BoxDecoration(color: Colors.grey),
        child: Stack(
          children: <Widget>[
           
            ParticleBackgroundPage(),
            ProfilePage(),
          ],
        ),
      ),
    );
  }
}

