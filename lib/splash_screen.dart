import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'gen/assets.gen.dart';

final class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Assets.images.splash.path),
          ),
        ),
        child: Center(
          child: SvgPicture.asset(Assets.icons.logo, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
