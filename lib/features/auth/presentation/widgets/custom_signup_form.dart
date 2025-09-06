import 'package:dalel/core/functions/app_functions.dart';
import 'package:dalel/core/functions/show_toast.dart';
import 'package:dalel/core/routers/app_routers.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widget/custom_button.dart';
import 'package:dalel/features/auth/presentation/cubits/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/cubits/auth_cubit/auth_state.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_agree_text.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authBloc = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSuccessState) {
          showToast(msg: "Account Created Successfully");
          customNavigatorpushReplacement(context, AppRouters().homeView);
        } else if (state is SignUpFialurState) {
          showToast(msg: state.errMsg);
        }
      },
      builder: (context, state) {
        return Form(
          key: authBloc.signUpFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                text: AppStrings.fristName,
                onChanged: (firstName) {
                  authBloc.firstName = firstName;
                },
              ),
              CustomTextFormField(
                text: AppStrings.lastName,
                onChanged: (lastName) {
                  authBloc.lastName = lastName;
                },
              ),
              CustomTextFormField(
                text: AppStrings.emailAddress,
                onChanged: (emailAddress) {
                  authBloc.emailAddress = emailAddress;
                },
              ),
              CustomTextFormField(
                suffixIcon: IconButton(
                  onPressed: () {
                    authBloc.obscurePasswordText();
                  },
                  icon: Icon(
                    authBloc.obscurePasswordTextValue == true
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                ),
                obscureText: authBloc.obscurePasswordTextValue,
                text: AppStrings.password,
                onChanged: (password) {
                  authBloc.password = password;
                },
              ),
              const CustomAgreeText(),
              const SizedBox(height: 88),
              state is SignUpLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustomButton(
                      backGroungColor: authBloc.termaAndCondition == false
                          ? AppColors.grey
                          : null,
                      text: AppStrings.signUp,
                      onPressed: () {
                        if (authBloc.termaAndCondition == true) {
                          if (authBloc.signUpFormKey.currentState!.validate()) {
                            authBloc.signUpWithEmailAndPassword();
                          }
                        }
                      }),
            ],
          ),
        );
      },
    );
  }
}
