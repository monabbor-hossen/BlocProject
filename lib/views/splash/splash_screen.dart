import 'package:blocc/config/components/internet_exception_widget.dart';
import 'package:blocc/config/components/loading_widget.dart';
import 'package:blocc/config/components/round_button.dart';
import 'package:blocc/config/routes/routes_name.dart';
import 'package:blocc/data/exceptions/app_exceptions.dart';
import 'package:blocc/services/splash/splash_services.dart';
import 'package:blocc/views/home/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices _splashServices = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _splashServices.isLogin(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            throw NoInternetException('');
          }
      ),
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
