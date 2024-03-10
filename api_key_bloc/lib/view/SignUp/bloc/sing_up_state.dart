part of 'sing_up_bloc.dart';

@immutable
sealed class SingUpState {}

final class SingUpInitial extends SingUpState {}

class UserCreatedState extends SingUpState {
}

class UserErrorState extends SingUpState {
  final String? error;

  UserErrorState({ this.error});
}