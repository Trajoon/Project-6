import 'package:api_key_bloc/Widgets/bottom_nav_bar.dart';
import 'package:api_key_bloc/Widgets/show_dialog.dart';
import 'package:api_key_bloc/Widgets/text_field_widget.dart';
import 'package:api_key_bloc/helper/constant/color.dart';
import 'package:api_key_bloc/helper/constant/spece.dart';
import 'package:api_key_bloc/helper/extensions/assistant.dart';
import 'package:api_key_bloc/view/Login/bloc/authentication_bloc.dart';
import 'package:api_key_bloc/view/SignUp/sing_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (state is SignedInState) {
          context.push(context, BottomNavBarr());
        } else if (state is ErrorState) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return CustomAlertDialog(
                content: 'Wrong!',
              );
            },
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width,
                MediaQuery.of(context).size.height / 2),
            child: Container(
                width: context.getWidth(context),
                height: context.getHeight(context) / 2,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/image/background.png',
                      width: context.getWidth(context),
                      height: context.getHeight(context),
                      fit: BoxFit.cover,
                    ),
                    const Positioned(
                        top: 150,
                        left: 150,
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.white),
                        )),
                  ],
                )),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextAuth(
                  controller: emailController,
                  labelText: "Email",
                  hintText: "Email",
                ),
                size12,
                TextAuth(
                  controller: passwordController,
                  labelText: "Password",
                  hintText: "Password",
                  isSecure: true,
                ),
                size48,
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<AuthenticationBloc>().add(SignInEvent(
                          email: emailController.text,
                          password: passwordController.text));
                      //  context.push(context, BottomNavBarr());
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Platzi.helpColor,
                        minimumSize:
                            Size(MediaQuery.of(context).size.width, 50)),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CustomAlertDialog(
                              content: 'This is a custom alert dialog.',
                              onPositivePressed: () {
                                Navigator.of(context).pop();
                              },
                            );
                          },
                        );
                      },
                      child: const Text(
                        "Forgat Password?",
                        style: TextStyle(color: Platzi.helpColor, fontSize: 15),
                      ),
                    ),
                    size24,
                    TextButton(
                      onPressed: () {
                        context.push(context, SingUp());
                      },
                      child: const Text(
                        "Sign up for an account",
                        style: TextStyle(color: Platzi.mainColor, fontSize: 15),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
