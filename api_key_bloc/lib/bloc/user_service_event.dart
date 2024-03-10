part of 'user_service_bloc.dart';

@immutable
sealed class UserServiceEvent {}


class LoginEvent extends UserServiceEvent{}
