import 'package:fluttercourse/pages/future_data_page.dart';
import 'package:fluttercourse/pages/home_page.dart';
import 'package:fluttercourse/pages/home_view.dart';
import 'package:fluttercourse/pages/offer_page.dart';
import 'package:fluttercourse/pages/register_page.dart';
import 'package:fluttercourse/pages/splash_screen.dart';
import 'package:fluttercourse/pages/profile_page.dart';
import 'package:fluttercourse/pages/login_page.dart';
import 'package:fluttercourse/pages/todo_list.dart';
import 'package:fluttercourse/pages/calculator.dart';
import 'package:fluttercourse/pages/workout_welcome_page.dart';
import 'package:go_router/go_router.dart';

class FLutterCourseRouter {
  static final GoRouter _router = GoRouter(
    initialLocation: '/splash_page',
    routes: [
      GoRoute(
        name: 'splash_page',
        path: '/splash_page',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        name: 'home_page',
        path: '/home_page',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: 'login_page',
        path: '/login_page',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        name: 'register_page',
        path: '/register_page',
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        name: 'offer_page',
        path: '/offer_page',
        builder: (context, state) => const OfferPage(),
      ),
      GoRoute(
        name: 'to_do_list',
        path: '/to_do_list',
        builder: (context, state) => const TodoList(),
      ),
      GoRoute(
        name: 'calculator',
        path: '/calculator',
        builder: (context, state) => const Calculator(),
      ),
      GoRoute(
        name: 'workout_welcome_page',
        path: '/workout_welcome_page',
        builder: (context, state) => const WorkoutWelcomePage(),
      ),
      GoRoute(
        name: 'home_view',
        path: '/home_view',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        name: 'future_data_page',
        path: '/future_data_page',
        builder: (context, state) => const FutureDataPage(),
        routes: [
          GoRoute(
            name: 'profile_page',
            path: 'profile_page',
            builder: (context, state) {
              Map<String, dynamic> args = state.extra as Map<String, dynamic>;
              dynamic profileData = args['profileData'];
              return ProfilePage(
                profileData: profileData,
              );
            },
          ),
        ],
      ),
    ],
  );

  //Getter function
  GoRouter get router => _router;
}
