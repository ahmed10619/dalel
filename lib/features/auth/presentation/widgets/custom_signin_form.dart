import 'package:dalel/core/functions/app_functions.dart';
import 'package:dalel/core/functions/show_toast.dart';
import 'package:dalel/core/routers/app_routers.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widget/custom_button.dart';

import 'package:dalel/features/auth/presentation/cubits/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/cubits/auth_cubit/auth_state.dart';

import 'package:dalel/features/auth/presentation/widgets/custom_forget_password.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authBloc = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInSuccessState) {
          FirebaseAuth.instance.currentUser!.emailVerified
              ? customNavigatorpushReplacement(context, AppRouters().homeView)
              : showToast(msg: "Please Verify Your Account");
        } else if (state is SignInFialurState) {
          showToast(msg: state.errMsg);
        }
      },
      builder: (context, state) {
        return Form(
          key: authBloc.signInFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
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
              const SizedBox(height: 16),
              CustomForgetPassword(
                onTap: () =>
                    customNavigator(context, AppRouters().forgetPasswordView),
              ),
              const SizedBox(height: 102),
              state is SignInLoadingState
                  ? Center(
                      child: CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      ),
                    )
                  : CustomButton(
                      text: AppStrings.signUp,
                      onPressed: () {
                        if (authBloc.signInFormKey.currentState!.validate()) {
                          authBloc.signInWithEmailAndPassword();
                        }
                      }),
            ],
          ),
        );
      },
    );
  }
}
