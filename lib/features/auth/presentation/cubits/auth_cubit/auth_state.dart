sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpLoadingState extends AuthState {}

final class SignUpSuccessState extends AuthState {}

final class SignUpFialurState extends AuthState {
  final String errMsg;

  SignUpFialurState({required this.errMsg});
}

final class SignInLoadingState extends AuthState {}

final class SignInSuccessState extends AuthState {}

final class SignInFialurState extends AuthState {
  final String errMsg;

  SignInFialurState({required this.errMsg});
}

final class TermsAndConditionStete extends AuthState {}

final class ObscurePasswordTextUpdateState extends AuthState {}
