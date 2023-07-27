import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            slideIconWidget: const Icon(Icons.arrow_back_ios_new,
                color: Color.fromARGB(255, 0, 0, 0)),
            enableSideReveal: true,
            liquidController: controller,
            onPageChangeCallback: OnPageChangedCallback,
            pages: [
              Container(
                padding: const EdgeInsets.all(30),
                // color: Colors.black,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/back.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image(
                      image: const AssetImage('assets/ces.png'),
                      height: size.height * 0.4,
                    ),
                    const Column(
                      children: [
                        Text(
                          "Community App",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "skdsvl salvk m  askm vm aksvm l m sadmkv smdalk ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                    const Text(
                      "1/3",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 80,
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                color: const Color.fromARGB(255, 255, 255, 255),
                //  decoration: const BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage("assets/6.jpg"),
                //     fit: BoxFit.fill,
                //   ),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image(
                      image: const AssetImage('assets/ces.png'),
                      height: size.height * 0.4,
                    ),
                    const Column(
                      children: [
                        Text(
                          "Community App",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "skdsvl salvk m  askm vm aksvm l m sadmkv smdalk ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                    const Text(
                      "1/3",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 80,
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                color: const Color.fromARGB(255, 210, 109, 109),
                // decoration: const BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage("assets/5.jpg"),
                //     fit: BoxFit.fill,
                //   ),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image(
                      image: const AssetImage('assets/ces.png'),
                      height: size.height * 0.4,
                    ),
                    const Column(
                      children: [
                        Text(
                          "Community App",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "skdsvl salvk m  askm vm aksvm l m sadmkv smdalk ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                    const Text(
                      "1/3",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 80,
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () {
                int nextPage = controller.currentPage + 1;
                controller.animateToPage(page: nextPage);
              },
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.white),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20)),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => controller.jumpToPage(page: 2),
              child: const Text(
                "Skip",
                style: TextStyle(color: Color.fromARGB(255, 255, 252, 252)),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              count: 3,
              activeIndex: controller.currentPage,
              effect: const WormEffect(
                activeDotColor: Color.fromARGB(255, 255, 255, 255),
                dotHeight: 5.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void OnPageChangedCallback(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
  }
}
