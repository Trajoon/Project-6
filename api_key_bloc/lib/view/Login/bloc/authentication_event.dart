part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationEvent {}

class SignInEvent extends AuthenticationEvent {
  final String email;
  final String password;

  SignInEvent({required this.email, required this.password});
}