import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
  int currentPage = 0;

  List<OnboardingData> onboardingData = [
    OnboardingData(
      title: "Welcome to Medicine Reminder",
      description: "Never forget to take your medications again with our smart reminder system",
      image: Icons.medical_services,
      color: Color(0xFF6C5CE7),
    ),
    OnboardingData(
      title: "Set Custom Reminders",
      description: "Create personalized medication schedules that fit your daily routine",
      image: Icons.schedule,
      color: Color(0xFFEF5DA8),
    ),
    OnboardingData(
      title: "Track Your Progress",
      description: "Monitor your medication adherence and stay on top of your health",
      image: Icons.trending_up,
      color: Color(0xFF00CEC9),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemCount: onboardingData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: onboardingData[index].color.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            onboardingData[index].image,
                            size: 100,
                            color: onboardingData[index].color,
                          ),
                        ),
                        SizedBox(height: 50),
                        Text(
                          onboardingData[index].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF34134E),
                            fontFamily: 'Scada',
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          onboardingData[index].description,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF666666),
                            fontFamily: 'Roboto',
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(40),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onboardingData.length,
                          (index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        width: currentPage == index ? 24 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: currentPage == index
                              ? Color(0xFF6C5CE7)
                              : Color(0xFFE0E0E0),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (currentPage == onboardingData.length - 1) {
                          Navigator.pushReplacementNamed(context, '/home');
                        } else {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF6C5CE7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        currentPage == onboardingData.length - 1
                            ? 'Get Started'
                            : 'Next',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontFamily: 'Scada',
                        ),
                      ),
                    ),
                  ),
                  if (currentPage < onboardingData.length - 1)
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF666666),
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingData {
  final String title;
  final String description;
  final IconData image;
  final Color color;

  OnboardingData({
    required this.title,
    required this.description,
    required this.image,
    required this.color,
  });
}