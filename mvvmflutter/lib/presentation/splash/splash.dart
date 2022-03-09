import 'package:flutter/material.dart';
import '/presentation/resources/resources.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child: Image(image: AssetImage(ImageAssets.splashLogo),
        ),
      ),
    );
  }
}
