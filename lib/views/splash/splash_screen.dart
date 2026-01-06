import 'package:blocc/config/components/internet_exception_widget.dart';
import 'package:blocc/config/components/loading_widget.dart';
import 'package:blocc/config/components/round_button.dart';
import 'package:blocc/config/routes/routes_name.dart';
import 'package:blocc/views/home/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: InternetExceptionWidget(onPress: (){},),
              )

            ],
          ),
        ),
      ),
    );
  }
}
