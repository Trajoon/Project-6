part of 'sing_up_bloc.dart';

@immutable
sealed class SingUpEvent {}

class CreateUserEvent extends SingUpEvent {
  final String name;
  final String email;
  final String password;

  CreateUserEvent({
    required this.name,
    required this.email,
    required this.password,
  });
}
