import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:techjet_interview/extension/extension.dart';
import 'package:techjet_interview/view/home/discover.dart';
import 'package:techjet_interview/view/home/profile_page.dart';
import 'package:techjet_interview/view/home/widgets/mini_homepage.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});
  static String path = '/homepage';
  static String name = 'HomePage';

  @override
  Widget build(BuildContext context) {
    final pagecontoller = usePageController();
    var nav = useState(0);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pagecontoller,
          children: const [HomePageNav1(), Discover(), ProfilePage()],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: nav.value,
            onTap: (value) {
              pagecontoller.animateToPage(value,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear);
              nav.value = value;
            },
            selectedItemColor: const Color(0xffFA6A02),
            selectedLabelStyle: TextStyle(
                fontSize: context.responsiveWidth(14),
                fontFamily: "OpenSans",
                fontWeight: FontWeight.w400),
            unselectedLabelStyle: TextStyle(
                fontSize: context.responsiveWidth(12),
                fontFamily: "OpenSans",
                fontWeight: FontWeight.w400),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.compass), label: "Discover"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.profile_circled), label: "Profile"),
            ]),
      ),
    );
  }
}
