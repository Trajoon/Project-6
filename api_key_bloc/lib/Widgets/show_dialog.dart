import 'package:api_key_bloc/helper/extensions/assistant.dart';
import 'package:api_key_bloc/view/Login/sing_in%20_view.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final String content;
  final VoidCallback? onPositivePressed;
 

  CustomAlertDialog({
    required this.content,
    this.onPositivePressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(content),
      actions: [
        TextButton(
          onPressed: onPositivePressed ?? () => context.push(context, Login()),
          child: Text('OK'),
        ),
      ],
    );
  }
}