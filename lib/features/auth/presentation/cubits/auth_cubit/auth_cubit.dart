import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  bool? termaAndCondition = false;
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  GlobalKey<FormState> signInFormKey = GlobalKey();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey();
  bool? obscurePasswordTextValue = true;

  Future<void> signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      await addProfileUesrs();
      await vertiyEmail();
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      signupHandelExeption(e);
    } catch (e) {
      emit(SignUpFialurState(errMsg: e.toString()));
    }
  }

  void signupHandelExeption(FirebaseAuthException e) {
    if (e.code == 'weak-password') {
      emit(SignUpFialurState(errMsg: 'The password provided is too weak.'));
    } else if (e.code == 'email-already-in-use') {
      emit(SignUpFialurState(
          errMsg: 'The account already exists for that email.'));
    } else if (e.code == 'invalid-email') {
      emit(SignUpFialurState(errMsg: 'The email is invalid.'));
    }
  }

  void updateTermsAndConditionCkeck({required newValue}) {
    termaAndCondition = newValue;
    emit(TermsAndConditionStete());
  }

  void obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }

  Future<void> signInWithEmailAndPassword() async {
    try {
      emit(SignInLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress!, password: password!);
      emit(SignInSuccessState());
    } on FirebaseAuthException catch (e) {
      signinHandelExeption(e);
    } catch (e) {
      emit(SignInFialurState(errMsg: e.toString()));
    }
  }

  void signinHandelExeption(FirebaseAuthException e) {
    if (e.code == 'user-not-found') {
      emit(SignInFialurState(errMsg: 'No user found for that email.'));
    } else if (e.code == 'wrong-password') {
      emit(SignInFialurState(errMsg: 'Wrong password provided for that user.'));
    } else {
      emit(SignInFialurState(errMsg: 'There Was Wrong In Email Or Password'));
    }
  }

  Future<void> vertiyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  Future<void> resetPasswordWithLink() async {
    try {
      emit(ForgetPasswordLoadingState());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
      emit(ForgetPasswordSuccessState());
    } on Exception catch (e) {
      emit(ForgetPasswordFialurState(errMsg: e.toString()));
    }
  }

  Future<void> addProfileUesrs() async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users
        .add({
          'email': emailAddress,
          'first_name': firstName,
          'last_name': lastName,
        })
        .then((value) => log("User Added"))
        .catchError((error) => log("Failed to add user: $error"));
  }
}
