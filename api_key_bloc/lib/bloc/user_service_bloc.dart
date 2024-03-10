import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_service_event.dart';
part 'user_service_state.dart';

class UserServiceBloc extends Bloc<UserServiceEvent, UserServiceState> {
  UserServiceBloc() : super(UserServiceInitial()) {
    on<UserServiceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
