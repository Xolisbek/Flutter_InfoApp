import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:info_app/screens/main_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff031F2B),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          children: [
            const Spacer(flex: 164),
            Center(
              child: SvgPicture.asset(
                'assets/images/lovers.svg',
                width: 200,
                height: 200,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 28.0, bottom: 8),
              child: Text('Oddiy hayotdan qoching',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Colors.white)),
            ),
            const Text(
                textAlign: TextAlign.center,
                "Atrofingizdagi ajoyib tajribalarni kashf eting va sizni qiziqarli yashashga majbur qiling!",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Color(0xffD6D2D2))),
            const Spacer(flex: 208),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => const MainScreen()),
                  );
                },
                borderRadius: BorderRadius.circular(8),
                splashColor: Colors.black,
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff5EDFFF),
                      borderRadius: BorderRadius.circular(8)),
                  width: double.infinity,
                  height: 56,
                  child: const Center(
                    child: Text(
                      'Boshladik',
                      style: TextStyle(color: Color(0xff263238)),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(flex: 66)
          ],
        ),
      ),
    );
  }
}
