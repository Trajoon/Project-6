import 'package:api_key_bloc/models/user_service.dart';
import 'package:api_key_bloc/service/api.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sing_up_event.dart';
part 'sing_up_state.dart';

class SingUpBloc extends Bloc<SingUpEvent, SingUpState> {
  SingUpBloc() : super(SingUpInitial()) {
    on<CreateUserEvent>((event, emit) async {
      try {
        final createUser = await UserService().createUser(
            name: event.name, email: event.email, password: event.password);
        print(createUser.name);
        emit(UserCreatedState());
      } catch (e) {
        emit(UserErrorState(error: e.toString()));
      }
    });
  }
}
