import 'package:e_commerce_shopping/layers/presentation/screens/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        bodyTextStyle: TextStyle(fontSize: 18),
        bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 24),
        pageColor: Colors.white,
        imagePadding: EdgeInsets.zero);
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Shop Now",
          body: "Check out our new font generator and level up your social bios. Need more? Head over to Glyphy for all the fancy fonts and cool symbols you could ever imagine." +
              "And don’t forget, we have images, plugins and the ultimate guide to all flavors of lorem ipsum.",
          image: Image.asset(
            "assets/images/splash1.png",
            width: 200,
          ),
          decoration: pageDecoration,
          footer: const SizedBox(),
        ),
        PageViewModel(
          title: "Free Delivery",
          body: "Check out our new font generator and level up your social bios. Need more? Head over to Glyphy for all the fancy fonts and cool symbols you could ever imagine." +
              "And don’t forget, we have images, plugins and the ultimate guide to all flavors of lorem ipsum.",
          image: Image.asset(
            "assets/images/splash1.png",
            width: 200,
          ),
          decoration: pageDecoration,
          footer: const SizedBox(),
        ),
        PageViewModel(
          title: "Easy use our Application",
          body: "Check out our new font generator and level up your social bios. Need more? Head over to Glyphy for all the fancy fonts and cool symbols you could ever imagine." +
              "And don’t forget, we have images, plugins and the ultimate guide to all flavors of lorem ipsum.",
          image: Image.asset(
            "assets/images/splash1.png",
            width: 200,
          ),
          decoration: pageDecoration,
          footer: Container(
            margin: const EdgeInsets.only(
              top: 24,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 60,
                right: 60,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  minimumSize: Size.fromHeight(55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  "Let's Shop",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showNextButton: true,
      showBackButton: false,
      skip: const Text(
        "Skip",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.redAccent,
        ),
      ),
      next: const Text(
        "Next",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.redAccent,
        ),
      ),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: const DotsDecorator(
        size: Size.square(18),
        color: Colors.redAccent,
        activeSize: Size(26, 22),
        activeColor: Colors.redAccent,
      ),
    );
  }
}
