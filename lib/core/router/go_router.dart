import 'package:go_router/go_router.dart';
import 'package:techjet_interview/services/firebase_auth/firebase_auth.dart';
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
        redirect: (context, state) {
          if (ServicesFirebaseAuth.auth.currentUser != null) {
            ServicesFirebaseAuth.user = ServicesFirebaseAuth.auth.currentUser!;
            return HomePage.path;
          }
          return null;
        },
      ),
      GoRoute(
        path: HomePage.path,
        name: HomePage.name,
        builder: (context, state) => const HomePage(),
        redirect: (context, state) {
          if (ServicesFirebaseAuth.auth.currentUser == null) {
            return AuthPage.path;
          }
          return null;
        },
      ),
    ],
  );
}
