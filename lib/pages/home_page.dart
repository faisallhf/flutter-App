import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  //VARIABLES
  String homePageText = 'Home Page';
  // var automatically changes  type

  //FUNCTIONS

  void changeHomeText() {
    homePageText = "Hello World!";

    // SET STATE IS USED FOR SHOWING DATA ON THE FRONT-END
    setState(() {});
  }

  void goToProfile() {
    context.goNamed('profile_page');

    // setState(() {});
  }

  void goToFutureDataPage() {
    context.goNamed('future_data_page');
  }

  void goToRegister() {
    context.goNamed('register_page');
  }

  void goToList() {
    context.goNamed('to_do_list');

    //setState(() {});
  }

  void gotoOfferPage() {
    context.goNamed('offer_page');

    //setState(() {});
  }

  // BUILD METHOD
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        // color: Colors.blueAccent,
        // width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              homePageText,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 10, // y-axis
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.pushNamed("future_data_page");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(119, 228, 200, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Api Integration",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed("to_do_list");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(54, 194, 206, 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "To Do List",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed("register_page");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 175, 97, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Register Page",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed("offer_page");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(228, 155, 255, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Offer Page",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed("login_page");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(195, 255, 147, 1),
                          borderRadius: BorderRadius.only(),
                        ),
                        child: Center(
                          child: Text(
                            "Login Page",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed("calculator");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(73, 142, 233, 1),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Calculator",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed("workout_welcome_page");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(53, 235, 210, 1),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Workout\nWelcome\n   Page",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed("home_view");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(211, 108, 202, 1),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Workout\nPackges",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // ElevatedButton(
                    //   onPressed: goToProfile,
                    //   child: const Text("CLICK ME"),
                    // ),
                    // ElevatedButton(
                    //   onPressed: goToFutureDataPage,
                    //   child: const Text("FUTURE DATA PAGE"),
                    // ),
                    // ElevatedButton(
                    //   onPressed: goToRegister,
                    //   child: const Text("REGISTER"),
                    // ),
                    // ElevatedButton(
                    //   onPressed: goToList,
                    //   child: const Text("To Do List"),
                    // ),
                    // ElevatedButton(
                    //   onPressed: gotoOfferPage,
                    //   // onPressed: () {
                    //   //   context.pop();
                    //   // },
                    //   child: const Text("Offer Page"),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
