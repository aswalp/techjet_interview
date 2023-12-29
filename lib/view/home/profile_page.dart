import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:techjet_interview/extension/extension.dart';
import 'package:techjet_interview/services/firebase_auth/firebase_auth.dart';
import 'package:techjet_interview/view/auth/auth_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = ServicesFirebaseAuth.user;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Profile",
          style: TextStyle(
              fontSize: context.responsiveWidth(20),
              fontFamily: "OpenSans",
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: context.maxWidth(),
            height: context.responsiveHeight(40),
          ),
          CircleAvatar(
            radius: context.responsiveWidth(80),
            backgroundImage: NetworkImage(user.photoURL ??
                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fvectors%2Fblank-profile-picture-mystery-man-973460%2F&psig=AOvVaw2D8f-bOffpogjeA1UilXyP&ust=1703920438191000&source=images&cd=vfe&ved=0CBIQjRxqFwoTCICmgeWLtIMDFQAAAAAdAAAAABAE"),
          ),
          SizedBox(
            height: context.responsiveHeight(20),
          ),
          Text(
            user.displayName!,
            style: TextStyle(
                fontSize: context.responsiveWidth(20),
                fontFamily: "OpenSans",
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: context.responsiveHeight(20),
          ),
          Text(
            user.email!,
            style: TextStyle(
                fontSize: context.responsiveWidth(16),
                color: const Color(0xFF7A7A7A),
                fontFamily: "OpenSans",
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: context.responsiveHeight(50),
          ),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(context.responsiveWidth(150),
                      context.responsiveWidth(50)),
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              onPressed: () {
                ServicesFirebaseAuth.logout().then((value) {
                  context.go(AuthPage.path);
                });
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
              label: Text(
                "Logout",
                style: TextStyle(
                    fontSize: context.responsiveWidth(16),
                    color: Colors.white,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.w400),
              ))
        ],
      ),
    );
  }
}
