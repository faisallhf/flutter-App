import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({super.key});

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("offer"),
        leading: GestureDetector(
          onTap: () {
            context.replaceNamed('home_page');
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            width: 340,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.only(top: 20, left: 20, right: 30, bottom: 20),
            child: Text(
              'use "MEGSL" Cupon For\nto get 90%Off',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 30),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.asset(
                      'assets/images/shoes2.jpg',
                      width: 335,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 335,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30, left: 30, right: 15),
                    child: Text(
                      'Super Flash Sale \n50% Off',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    margin: EdgeInsets.only(top: 120, left: 30),
                    padding: EdgeInsets.only(top: 10, left: 10, right: 5),
                    child: Text(
                      '08',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 20,
                    color: Colors.white.withOpacity(0),
                    margin: EdgeInsets.only(top: 120, left: 70),
                    padding: EdgeInsets.only(top: 5, left: 15, right: 5),
                    child: Text(
                      ':',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    margin: EdgeInsets.only(top: 120, left: 100),
                    padding: EdgeInsets.only(top: 10, left: 10, right: 5),
                    child: Text(
                      '34',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 20,
                    color: Colors.white.withOpacity(0),
                    margin: EdgeInsets.only(top: 120, left: 150),
                    padding: EdgeInsets.only(top: 5, left: 8, right: 5),
                    child: Text(
                      ':',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    margin: EdgeInsets.only(top: 120, left: 172),
                    padding: EdgeInsets.only(top: 10, left: 10, right: 5),
                    child: Text(
                      '52',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.asset(
                      'assets/images/shoes1.jpg',
                      width: 335,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 335,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30, left: 22, right: 15),
                    child: Text(
                      '90% Off Super Mega Sale',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 90, left: 22, right: 15),
                    child: Text(
                      'special birthday for you',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
