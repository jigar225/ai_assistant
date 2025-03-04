import 'package:chatbot/Screens/HomeScreen.dart';
import 'package:chatbot/Widget/Splash_loading.dart';
import 'package:chatbot/helper/global.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashscrren extends StatefulWidget {
  const Splashscrren({super.key});
  @override
  State<Splashscrren> createState() => _SplashscrrenState();
}

class _SplashscrrenState extends State<Splashscrren> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const Homescreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SplashLoading(),
            Text(
              "Welcome To ChatPal",
              style: GoogleFonts.spaceGrotesk(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 3, 11, 12)),
            ),
          ],
        ),
      ),
    );
  }
}
