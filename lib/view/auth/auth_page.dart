import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:techjet_interview/extension/extension.dart';
import 'package:techjet_interview/services/firebase_auth/firebase_auth.dart';
import 'package:techjet_interview/view/home/home_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});
  static String path = '/';
  static String name = 'AuthPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                  width: context.maxWidth(),
                  height: context.maxHeight() * 0.6,
                  child: Image.asset(
                    "assets/image_auth/auth_image.jpeg",
                    fit: BoxFit.cover,
                  )),
              //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
              // Positioned(
              //   top: 50,
              //   child: IconButton(
              //       onPressed: () {},
              //       color: Colors.red,
              //       icon: Icon(Icons.arrow_back_ios_new_outlined)),
              // ),
            ],
          ),
          SizedBox(
            height: context.responsiveHeight(30),
          ),
          Text(
            "Dive in without delay",
            style: TextStyle(
                fontSize: context.responsiveWidth(20),
                fontFamily: "OpenSans",
                fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: EdgeInsets.all(context.responsiveWidth(8)),
            child: Text(
              "Lorem ipsum dolor sit amet consectetur. Neque et nulla et.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: context.responsiveWidth(16),
                  color: const Color(0xFF7A7A7A),
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: context.responsiveHeight(35),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(context.responsiveWidth(150),
                      context.responsiveWidth(49)),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(),
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                context.progressbar();
                try {
                  ServicesFirebaseAuth.signInWithGoogle().then((value) {
                    if (value.user != null) {
                      ServicesFirebaseAuth.user = value.user!;
                      context.pop();
                      context.go(HomePage.path);
                    } else {
                      context.pop();
                      context.showSnackbar("Something went Wrong");
                    }
                  });
                } on PlatformException catch (e) {
                  context.pop();
                  log(e.message.toString());
                  context.showSnackbar(e.message ?? "Something went Wrong");
                }
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                      height: context.responsiveWidth(16),
                      width: context.responsiveWidth(16),
                      child: Image.asset(
                        "assets/image_auth/google_icon.png",
                        fit: BoxFit.contain,
                      )),
                  Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: context.responsiveWidth(14),
                        color: Colors.black,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ))
        ],
      )),
    );
  }
}
