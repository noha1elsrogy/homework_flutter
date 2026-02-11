import 'package:ecommerce_application/constants.dart';
import 'package:ecommerce_application/generated/assets.dart';
import 'package:ecommerce_application/widgets/custom_button.dart';
import 'package:ecommerce_application/widgets/welcome_screen_widgets/welcome_page.dart';

import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController pageController = PageController();

  double currentPages() {
    if (pageController.hasClients) {
      return pageController.page ?? 0.0;
    } else {
      return 0.0;
    }
  }

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: PageView(
                controller: pageController,
                children: [
                  WelcomePage(
                    mainTitle: 'We provide best quality',
                    secondaryTitle: ' Fruits to your family',
                    mainSubtitle: 'Lorem ipsum dolor sit amet, consectetur',
                    secondarySubtitle:
                        ' adipiscing elit, sed do eiusmod tempor',
                    imageAsset: Assets.welcomeScreen1,
                    actionWidget: CustomButton(
                      text: 'Next',
                      colorButton: kPrimayColor,
                      textColor: Colors.black,
                      onTap: () {
                        if (pageController.page! <= 0) {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.linear,
                          );
                        }
                      },
                      borderColor: kPrimayColor,
                    ),
                    currentPageIndex: currentPages(),
                    backAction: () {
                      if (pageController.page! > 0) {
                        pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                  ),
                  WelcomePage(
                    mainTitle: 'We provide best quality',
                    secondaryTitle: ' Fruits to your family',
                    mainSubtitle: 'Lorem ipsum dolor sit amet, consectetur',
                    secondarySubtitle:
                        ' adipiscing elit, sed do eiusmod tempor',
                    imageAsset: Assets.welcomeScreen1,
                    actionWidget: CustomButton(
                      text: 'Next',
                      colorButton: kPrimayColor,
                      textColor: Colors.black,
                      onTap: () {
                        if (pageController.page! == 1) {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.linear,
                          );
                        }
                      },
                      borderColor: kPrimayColor,
                    ),
                    currentPageIndex: currentPages(),
                    backAction: () {
                      if (pageController.page! > 0) {
                        pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                  ),
                  WelcomePage(
                    mainTitle: 'Fast and responsibily ',
                    secondaryTitle: 'delivery by our courir',
                    mainSubtitle: 'Lorem ipsum dolor sit amet, consectetur ',
                    secondarySubtitle: 'adipiscing elit, sed do eiusmod tempor',
                    imageAsset: Assets.welcomeScreen2,
                    actionWidget: Column(
                      children: [
                        CustomButton(
                          text: 'Create an account',
                          colorButton: Colors.black,
                          textColor: Colors.white,
                          onTap: () {
                            Navigator.pushNamed(context, signupScreen);
                          },
                          borderColor: Colors.black,
                        ),
                        SizedBox(height: 10),
                        CustomButton(
                          text: 'Login',
                          colorButton: Colors.white,
                          textColor: Colors.black,
                          onTap: () {
                            Navigator.pushNamed(context, loginenScreen);
                          },
                          borderColor: Colors.black,
                        ),
                      ],
                    ),
                    currentPageIndex: currentPages(),
                    backAction: () {
                      if (pageController.page! > 0) {
                        pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
