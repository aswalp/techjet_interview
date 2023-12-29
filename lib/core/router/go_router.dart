import 'package:go_router/go_router.dart';
import 'package:techjet_interview/view/auth/auth_page.dart';
import 'package:techjet_interview/view/home/home_page.dart';

class RouterGo {
  static final router = GoRouter(
    initialLocation: AuthPage.path,
    routes: <RouteBase>[
      GoRoute(
        path: AuthPage.path,
        name: AuthPage.name,
        builder: (context, state) => const AuthPage(),
      ),
      GoRoute(
        path: HomePage.path,
        name: HomePage.name,
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
