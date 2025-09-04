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
    var authBloc = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
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
                text: AppStrings.password,
                onChanged: (password) {
                  authBloc.password = password;
                },
              ),
              const CustomAgreeText(),
              const SizedBox(height: 88),
              CustomButton(
                  text: AppStrings.signUp,
                  onPressed: () {
                    authBloc.signUpWithEmailAndPassword();
                  }),
            ],
          ),
        );
      },
    );
  }
}
