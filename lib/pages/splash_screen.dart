import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    checkLogged();
    // Use Future.delayed to delay navigation
    // Future.delayed(const Duration(seconds: 5), () {
    //   context.goNamed('home_page');
    // });
  }

  //FUNCTIONS

  //CHECK IF USER IS LOGGED IN

  checkLogged() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    if (sharedPreferences.containsKey("logged")) {
      if (sharedPreferences.getBool("logged") == true) {
        goTo("home_page");
      } else {
        goTo("login_page");
      }
    } else {
      goTo("login_page");
    }
  }

  //GO TO FUNCTION

  goTo(String goLocation) {
    // Use Future.delayed to delay navigation
    Future.delayed(const Duration(seconds: 2), () {
      context.goNamed(goLocation);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "SPLASH PAGE",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 16.0), // Added for spacing
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
              backgroundColor: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}
