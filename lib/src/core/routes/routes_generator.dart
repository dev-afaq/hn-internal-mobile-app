import 'package:flutter/material.dart';
import 'package:hn_internal_mobile_app/src/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:hn_internal_mobile_app/src/features/splash/presentation/presentation.dart';
import '../../src.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoutesGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SplashCubit(),
            child: const SplashScreen(),
          ),
        );
      case Routes.signIn:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SplashCubit(),
            child: const Scaffold(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(),
        );
    }
  }
}
