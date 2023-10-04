import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hn_internal_mobile_app/src/features/authentication/signup/presentation/widgets/custom_elevated_button_Icon.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../src.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (
        context,
        state,
      ) {},
      builder: (
        context,
        state,
      ) {
        final cubit = context.read<SignUpCubit>();
        return Scaffold(
          body: ReactiveForm(
            formGroup: cubit.signUpForm,
            child: Stack(
              children: [
                ListView(
                  padding: const EdgeInsets.only(
                    left: Sizes.s32,
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
                      AppStrings.kSignUp,
                      style: TextStyle(
                        fontSize: FontSizes.s40,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: Sizes.s40,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                Assets.personAvatar.name.png,
                                height: Sizes.s88,
                                width: Sizes.s112,
                              ),
                              const SizedBox(
                                height: Sizes.s16,
                              ),
                              TextButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return const Column(
                                        children: [
                                          CustomElevatedButtonIcon(
                                            label: "Camera",
                                            icon: Icon(Icons.camera_alt),
                                          ),
                                          CustomElevatedButtonIcon(
                                            label: "Camera",
                                            icon: Icon(Icons.camera_alt),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: const Text(AppStrings.kUploadPic),
                              ),
                            ],
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomReactiveTextField(
                                formControlName: 'fName',
                                hintText: AppStrings.kFirstName,
                              ),
                              SizedBox(
                                height: Sizes.s16,
                              ),
                              CustomReactiveTextField(
                                formControlName: 'lName',
                                hintText: AppStrings.kLastName,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: Sizes.s16,
                    ),
                    const CustomReactiveTextField(
                      formControlName: 'email',
                      hintText: AppStrings.kEnterEmail,
                    ),
                    const SizedBox(
                      height: Sizes.s16,
                    ),
                    const CustomReactiveTextField(
                      formControlName: 'number',
                      hintText: AppStrings.kEnterNumber,
                      keyboardType: TextInputType.phone,
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
                    const CustomReactiveTextField(
                      formControlName: 'password_confirmation',
                      hintText: AppStrings.kConfirmPassword,
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
                            label: AppStrings.kSignUp,
                            onPressed: () {},
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: Sizes.s16,
                    ),
                  ],
                ),
                Visibility(
                  visible: (state.status == RequestStatus.inProgress),
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.black.withOpacity(0.5),
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
