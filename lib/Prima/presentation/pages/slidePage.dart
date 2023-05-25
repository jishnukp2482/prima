import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import '../routes/app_pages.dart';
import '../themes/appcolors.dart';
import '../widgets/slide1.dart';
import '../widgets/slide2.dart';
import '../widgets/slide3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    const pageCount = 3;

    final List<Widget> pages = [
      const Slide1(),
      const Slide2(),
      const Slide3(),
    ];

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                currentPage = page;
              });
            },
            children: List.generate(pageCount, (index) {
              return Center(
                child: pages[index],
              );
            }),
          ),
          currentPage == pages.length
              ? Container()
              : Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.2,
                  child: PageViewDotIndicator(
                    size: const Size(8, 8),
                    currentItem: currentPage,
                    count: pages.length,
                    unselectedColor: AppColors.primaryColor,
                    selectedColor: AppColors.blue,
                    duration: const Duration(milliseconds: 400),
                  ),
                ),
          if (currentPage == pages.length)
            const SizedBox()
          else
            Positioned(
              top: MediaQuery.of(context).size.height * 0.078,
              right: MediaQuery.of(context).size.width * 0.021,
              child: TextButton(
                onPressed: () {
                  Get.toNamed(AppPages.loginPage);
                  // duration: Duration(milliseconds: 500),
                  // curve: Curves.easeInOut);
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          currentPage == pages.length
              ? const SizedBox()
              : Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.070,
                  right: 0,
                  left: 0,
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.buttonColor),
                      onPressed: () {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut);
                      },
                      child: currentPage == pages.length - 1
                          ? GestureDetector(
                              onTap: () {
                                Get.toNamed(AppPages.loginPage);
                              },
                              child: const Text('Done',
                                  style: TextStyle(
                                    color: AppColors.textColor,
                                    fontSize: 15,
                                  )),
                            )
                          : const Text(
                              'Next',
                              style: TextStyle(
                                color: AppColors.textColor,
                                fontSize: 15,
                              ),
                            ),
                    ),
                  ),
                ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.010,
            right: 0,
            left: 0,
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonColor),
                onPressed: () {
                  _pageController.previousPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut);
                  // duration: Duration(milliseconds: 500),
                  // curve: Curves.easeInOut);
                },
                child: const Text(
                  'Back',
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
