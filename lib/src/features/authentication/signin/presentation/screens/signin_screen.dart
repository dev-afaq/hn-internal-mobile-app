import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'dart:io' show Platform;
import '../../../../../src.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        switch (state.status) {
          case RequestStatus.success:
            Navigator.pushNamedAndRemoveUntil(
                context, Routes.homeScreen, (route) => false);
            break;
          case RequestStatus.failure:
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
            break;
          default:
            break;
        }
      },
      builder: (context, state) {
        final cubit = context.read<SignInCubit>();
        return Scaffold(
          body: ReactiveForm(
            formGroup: cubit.signInForm,
            child: Stack(
              children: [
                ListView(
                  padding: const EdgeInsets.only(
                    left: Sizes.s20,
                    right: Sizes.s32,
                  ),
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      height: Sizes.s168,
                      width: Sizes.s168,
                      child: Image.asset(
                        Assets.appLogo.name.png,
                      ),
                    ),
                    const Text(
                      AppStrings.kLogIn,
                      style: TextStyle(
                        fontSize: FontSizes.s40,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: Sizes.s40,
                    ),
                    const CustomReactiveTextField(
                      formControlName: 'email',
                      hintText: AppStrings.kEnterEmail,
                    ),
                    const SizedBox(
                      height: Sizes.s16,
                    ),
                    const CustomReactiveTextField(
                      formControlName: 'password',
                      hintText: AppStrings.kEnterPassword,
                    ),
                    const SizedBox(
                      height: Sizes.s16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: Sizes.s184,
                      ),
                      child: ReactiveFormConsumer(
                        builder: (_, formGroup, __) {
                          return CustomElevatedButton(
                            label: AppStrings.kLogIn,
                            onPressed: () {},
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: Sizes.s48,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: Sizes.s32,
                        right: Sizes.s32,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Divider(
                              thickness: Sizes.s2,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: Sizes.s12,
                                right: Sizes.s8,
                              ),
                              child: Text(
                                AppStrings.kOr,
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Divider(
                              thickness: Sizes.s2,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: Sizes.s32,
                    ),
                    (Platform.isIOS)
                        ? Column(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Image.asset(
                                  Assets.faceId.name.png,
                                  color: AppColors.primaryColor,
                                  height: Sizes.s88,
                                  width: Sizes.s88,
                                ),
                              ),
                              const SizedBox(
                                height: Sizes.s16,
                              ),
                              const Text(
                                AppStrings.kUseFaceId,
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Image.asset(
                                  Assets.fingerPrint.name.png,
                                  color: AppColors.primaryColor,
                                  height: Sizes.s88,
                                  width: Sizes.s88,
                                ),
                              ),
                              const SizedBox(
                                height: Sizes.s16,
                              ),
                              const Text(
                                AppStrings.kUseFingerPrint,
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ],
                          ),
                    const SizedBox(
                      height: Sizes.s32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          AppStrings.kDoNotHaveAcc,
                          style: TextStyle(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.signUp);
                          },
                          child: const Text(AppStrings.kSignUp),
                        ),
                      ],
                    ),
                  ],
                ),
                Visibility(
                  visible: (state.status == RequestStatus.inProgress),
                  child: Container(
                    alignment: Alignment.center,
                    color: AppColors.blackColor.withOpacity(0.5),
                    child: const CircularProgressIndicator(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}