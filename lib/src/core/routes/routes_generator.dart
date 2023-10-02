// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../src.dart';
//
// class RoutesGenerator {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case Routes.initialRoute:
//         return MaterialPageRoute(
//           builder: (context) => const Scaffold(),
//         );
//       case Routes.homeScreen:
//         return MaterialPageRoute(
//           builder: (context) => BlocProvider(
//             lazy: false,
//             create: (context) => HomeCubit(),
//             child: const HomeScreen(),
//           ),
//
//         );
//       case Routes.signIn:
//         return MaterialPageRoute(
//           builder: (context) => BlocProvider(
//             create: (context) => SignInCubit(),
//             child: const SignInScreen(),
//           ),
//         );
//       case Routes.signUp:
//         return MaterialPageRoute(
//           builder: (context) => BlocProvider(
//             lazy: false,
//             create: (context) => SignUpCubit(),
//             child: const SignUpScreen(),
//           ),
//         );
//       case Routes.todoForm:
//         return MaterialPageRoute(
//           builder: (context) => BlocProvider(
//             create: (context) => TodoCubit(
//               todo: settings.arguments != null
//                   ? settings.arguments as Todo?
//                   : null,
//             ),
//             child: const TodoScreen(),
//           ),
//         );
//       default:
//         return MaterialPageRoute(
//           builder: (context) => const Scaffold(),
//         );
//     }
//   }
// }
