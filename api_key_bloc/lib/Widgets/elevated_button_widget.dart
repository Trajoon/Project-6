import 'package:api_key_bloc/helper/extensions/assistant.dart';
import 'package:api_key_bloc/view/Login/sing_in%20_view.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          context.push(context, Login());
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            minimumSize: Size(MediaQuery.of(context).size.width, 50)),
        child: const Text(
          'Sign up',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
