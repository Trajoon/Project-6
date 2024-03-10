import 'package:api_key_bloc/service/api.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  String token = "";
  AuthenticationBloc() : super(AuthenticationInitial()) {
    on<SignInEvent>((event, emit) async {
      try {
        final res = await UserService()
            .login(email: event.email, password: event.password);

        token = res['access_token'];

        emit(SignedInState(accessToken: token));
      } catch (e) {
        emit(ErrorState(
            errorMessage:
        'An error occurred during the authentication process'));
      }
    });
  }
}
