import 'package:flutter/material.dart';
import 'package:stylish/routes/app_routes.dart';
import 'package:stylish/utils/images.dart';
import 'package:stylish/utils/styles.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List<Map<String, dynamic>> dummyData = [
    {
      'title': 'Choose Products',
      'subtitle':
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.'
    },
    {
      'title': 'Make Payment',
      'subtitle':
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.'
    },
    {
      'title': 'Get Your Order',
      'subtitle':
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.'
    }
  ];

  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      style: blackTextStyle,
                      children: [
                        TextSpan(
                          text: "${_currentPage + 1}",
                          style: blackTextStyle.merge(
                              semiBoldStyle), // Gaya teks untuk bagian currentPage
                        ),
                        TextSpan(
                          text: "/${dummyData.length}",
                          style: blackTextStyle.merge(
                            semiBoldStyle.copyWith(color: greyColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    child: Text(
                      "Skip",
                      style: blackTextStyle.merge(semiBoldStyle),
                    ),
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, AppRoutes.getStarted);
                    },
                  ),
                ],
              ),
              Expanded(
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  itemCount: dummyData.length,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(Images.onboarding1,
                            width: 300,
                            height: 300), // Ganti dengan gambar yang sesuai
                        Text(
                          dummyData[index]['title'],
                          style: titleTextStyle,
                        ),
                        Text(
                          dummyData[index]['subtitle'],
                          textAlign: TextAlign.center,
                          style: blackTextStyle.copyWith(color: greyColor),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      if (_currentPage > 0) {
                        _pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: Text(
                      _currentPage > 0 ? 'Prev' : '',
                      style: blackTextStyle
                          .merge(semiBoldStyle.copyWith(color: greyColor)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (_currentPage < dummyData.length - 1) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        Navigator.pushReplacementNamed(context, AppRoutes.main);
                      }
                    },
                    child: Text(
                        _currentPage < dummyData.length - 1
                            ? 'Next'
                            : 'Get Started',
                        style: redTextStyle.merge(semiBoldStyle)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
