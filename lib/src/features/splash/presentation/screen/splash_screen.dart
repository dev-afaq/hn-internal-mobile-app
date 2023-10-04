import 'package:flutter/material.dart';
import 'package:hn_internal_mobile_app/src/features/splash/presentation/cubit/splash_cubit.dart';
import '../../../../src.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state.status == RequestStatus.success) {
            Navigator.pushNamedAndRemoveUntil(
                context, Routes.signIn, (route) => false);
          }
        },
        builder: (context, state) {
          return Center(
            child: Image.asset(Assets.appLogo.name.png),
          );
        },
      ),
    );
  }
}
