import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hn_internal_mobile_app/src/features/splash/presentation/cubit/splash_cubit.dart';
import '../../src.dart';

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
            create: (context) => SignInCubit(),
            child: const SignInScreen(),
          ),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SignUpCubit(),
            child: const SignUpScreen(),
          ),
        );
      case Routes.empHomeScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => EmpHomeCubit(),
            child: const EmpHomeScreen(),
          ),
        );
      case Routes.hrHomeScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => HrHomeCubit(),
            child: const HrHomeScreen(),
          ),
        );
      case Routes.financeHomeScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => FinanceHomeCubit(),
            child: const FinanceHomeScreen(),
          ),
        );
      case Routes.managerHomeScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => ManagerHomeCubit(),
            child: const ManagerHomeScreen(),
          ),
        );
      case Routes.empLeaveScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => EmpLeaveCubit(),
            child: const EmpLeaveScreen(),
          ),
        );
      case Routes.hrLeaveScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => HrLeaveCubit(),
            child: const HrLeaveScreen(),
          ),
        );
      case Routes.managerLeaveScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => ManagerLeaveCubit(),
            child: const ManagerLeaveScreen(),
          ),
        );
      case Routes.empExpenseScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => EmpExpenseCubit(),
            child: const EmpExpenseScreen(),
          ),
        );
      case Routes.applyExpenseScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => ApplyExpenseCubit(),
            child: const ApplyExpenseScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(),
        );
    }
  }
}
