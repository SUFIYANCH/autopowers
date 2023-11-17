import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text("ClipRect Example"),
        centerTitle: true,
      ),
      body: Center(
        child: ClipPath(
          clipper: SCustomClipper(),
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'S',
                style: TextStyle(
                  fontSize: 48.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(size.width * 0.1, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.05, size.height * 0.4,
        size.width * 0.25, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.4, size.height * 0.6,
        size.width * 0.2, size.height * 0.8);
    path.quadraticBezierTo(
        size.width * 0.1, size.height * 0.9, size.width * 0.35, size.height);
    path.quadraticBezierTo(size.width * 0.6, size.height * 0.9,
        size.width * 0.7, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.9, size.height * 0.6,
        size.width * 0.75, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.65, size.height * 0.4,
        size.width * 0.9, size.height * 0.2);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
