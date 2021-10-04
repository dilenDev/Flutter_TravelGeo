import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 4000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  //! material designing
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.lightBlueAccent[100],
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              Colors.blueAccent,
              Colors.white,
              Colors.lightBlueAccent,
              Colors.blueAccent,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Travel",
                    style: GoogleFonts.pacifico(
                      textStyle: const TextStyle(
                        fontSize: 80.0,
                        color: Colors.blue,
                        shadows: [
                          Shadow(
                            blurRadius: 15.0,
                            color: Colors.grey,
                            offset: Offset(5.0, 1.0),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 100),
                    child: const Text(
                      "Geo",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.orangeAccent,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Colors.blue,
                            offset: Offset(4.0, 1.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 250,
                height: 100,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/airplane.png"),
                  fit: BoxFit.fitWidth,
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
