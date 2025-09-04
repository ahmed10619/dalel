sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpLoadingState extends AuthState {}

final class SignUpSuccessState extends AuthState {}

final class SignUpFialurState extends AuthState {
  final String errMsg;

  SignUpFialurState({required this.errMsg});
}
