part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationState {}

final class AuthenticationInitial extends AuthenticationState {}


class LoadingState extends AuthenticationState {}

class SignedInState extends AuthenticationState {
  final String accessToken;
  

  SignedInState({required this.accessToken});
}

class ErrorState extends AuthenticationState {
  final String errorMessage;

  ErrorState({required this.errorMessage});
}
