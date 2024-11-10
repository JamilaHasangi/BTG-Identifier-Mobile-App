import 'package:btg_identifier/features/authentication/presentation/widgets/bottom_nav_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
  // Import the BottomNavBar component

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentSlide = 0;

  final List<String> _carouselImages = [
    'assets/home1.jpg',
    'assets/home2.jpg',
    'assets/home3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600; // Check for mobile size (adjust this as needed)

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            // Carousel slider
            CarouselSlider(
              items: _carouselImages.map((imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          color: Colors.black45,
                          child: const Text(
                            'A DEEP LEARNING FRAMEWORK FOR BLACK TEA GRADE IDENTIFICATION IN LOW COUNTRY OF SRI LANKA',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
                viewportFraction: 1.0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentSlide = index;
                  });
                },
              ),
            ),
            // Image and Text on the same line
            Positioned(
              top: 40,  // Adjust position of the image and text
              left: MediaQuery.of(context).size.width * 0.1, // Adjust horizontal position
              child: Row(
                children: [
                  Image.asset(
                    'assets/camera2.png',  // Replace with your logo image path
                    width: 50,  // Set the desired width
                    height: 50,  // Set the desired height
                  ),
                  const SizedBox(width: 8),  // Space between image and text
                  const Text(
                    'BTG Identification',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Display the bottom navigation bar only on mobile screens
      bottomNavigationBar: isMobile ? BottomNavBar() : null,
    );
  }
}
