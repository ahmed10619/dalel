import 'package:dalel/core/functions/app_functions.dart';
import 'package:dalel/core/functions/show_toast.dart';
import 'package:dalel/core/routers/app_routers.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widget/custom_button.dart';

import 'package:dalel/features/auth/presentation/cubits/auth_cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/cubits/auth_cubit/auth_state.dart';

import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomForgetPasswordForm extends StatelessWidget {
  const CustomForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authBloc = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ForgetPasswordSuccessState) {
          showToast(msg: "Check Your Email To Reset Your Password");
          customNavigatorpushReplacement(context, AppRouters().signInView);
        } else if (state is ForgetPasswordFialurState) {
          showToast(msg: state.errMsg);
        }
      },
      builder: (context, state) {
        return Form(
          key: authBloc.forgetPasswordFormKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomTextFormField(
                  text: AppStrings.emailAddress,
                  onChanged: (emailAddress) {
                    authBloc.emailAddress = emailAddress;
                  },
                ),
                const SizedBox(height: 102),
                state is ForgetPasswordFialurState
                    ? Center(
                        child: CircularProgressIndicator(
                          color: AppColors.primaryColor,
                        ),
                      )
                    : CustomButton(
                        text: AppStrings.sendResetPasswordLink,
                        onPressed: () {
                          if (authBloc.forgetPasswordFormKey.currentState!
                              .validate()) {
                            authBloc.resetPasswordWithLink();
                          }
                        }),
              ],
            ),
          ),
        );
      },
    );
  }
}
