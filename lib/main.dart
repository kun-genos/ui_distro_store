import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_distro_app/data.dart';
import 'package:ui_distro_app/home_page.dart';
import 'package:ui_distro_app/item_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatorToHome();
  }

  _navigatorToHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Homepage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/splash_image.png"),
          SizedBox(
            height: 20,
          ),
          Text(
            "Drizzle",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF3B3D65),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Your Fashion Destination",
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[700]))
        ],
      )),
    );
  }
}
