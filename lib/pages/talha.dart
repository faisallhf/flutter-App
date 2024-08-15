import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, left: 7, bottom: 10),
              child: const Text(
                'Offer',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 40, right: 10, bottom: 10),
                child: const Icon(
                  CupertinoIcons.bell_fill,
                  size: 30,
                  color: Color.fromARGB(255, 103, 101, 101),
                ))
          ],
        ),
        Column(
          children: [
            const SizedBox(height: 40),
            Container(
              width: 350,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius:
                    BorderRadius.circular(8), // Make the edges circular
              ),
              padding: const EdgeInsets.only(
                  top: 20, left: 10, right: 30, bottom: 15),
              child: const Text(
                'use "MEGSL" Cuspon For \n to get 90%off',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            )
          ],
        ),
        Column(
          children: [
            const SizedBox(height: 20),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/shoesf.jpg',
                    width: 350, // Set the width manually
                    height: 200,
                    fit: BoxFit.cover, // Set the height manually
                  ),
                ),
                Container(
                  width: 350,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Container(
                  //   color: Colors.black.withOpacity(0.5),
                  padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
                  child: const Text(
                    'Super Flash Sale \n50% Off',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: const EdgeInsets.only(top: 120, left: 15),
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 5),
                  child: const Text(
                    '08',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black),
                  ),
                ),
                Container(
                  height: 50,
                  width: 20,
                  color: Colors.white.withOpacity(0),
                  margin: const EdgeInsets.only(top: 120, left: 70),
                  padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                  child: const Text(
                    ':',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: const EdgeInsets.only(top: 120, left: 95),
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 5),
                  child: const Text(
                    '34',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black),
                  ),
                ),
                Container(
                  height: 50,
                  width: 20,
                  color: Colors.white.withOpacity(0),
                  margin: const EdgeInsets.only(top: 120, left: 150),
                  padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                  child: const Text(
                    ':',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: const EdgeInsets.only(top: 120, left: 175),
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 5),
                  child: const Text(
                    '52',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            const SizedBox(height: 20),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/shoes22.jpg',
                    width: 350, // Set the width manually
                    height: 200,
                    fit: BoxFit.cover, // Set the height manually
                  ),
                ),
                Container(
                  width: 350,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
                  child: const Text(
                    '90% Off Super Mega Sale',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 90, left: 15, right: 15),
                  child: const Text(
                    'special birthday ',
                    style: TextStyle(
                        //  fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        )
      ]),
    );
  }
}
