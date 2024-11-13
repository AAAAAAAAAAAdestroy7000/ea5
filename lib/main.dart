import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
void main() {
  runApp(const otherpackage());
}

class otherpackage extends StatefulWidget {
  const otherpackage({super.key});

  @override
  State<otherpackage> createState() => _otherpackageState();
}

class _otherpackageState extends State<otherpackage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 75,
                  color: Colors.white.withOpacity(0.4),
                  child: Center(
                    child: LoadingAnimationWidget.beat(
                        color: Colors.white,
                        size: 50
                    )
                  ),
                ),
                Container(
                  child: Text(
                      'loading_animation_widget 1.3.0',
                    style: TextStyle(
                      fontSize: 25
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Loading animation or loading spiner or loader. It is used to show loading animation when the app is in loading state or something is processing for uncertain time.',
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                ),
                Container(

                  height: 75,
                  color: Colors.white.withOpacity(0.4),
                  child: Center(
                      child: LoadingAnimationWidget.progressiveDots(
                          color: Colors.white,
                          size: 75
                      )
                  ),
                ),
              ],
            ),
          ),
        )
      )
    );
  }
}
