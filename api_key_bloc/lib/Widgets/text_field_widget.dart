import 'package:api_key_bloc/helper/constant/color.dart';
import 'package:flutter/material.dart';

class TextAuth extends StatelessWidget {
  TextAuth({
    Key? key,
    required this.hintText,
    this.isSecure = false,
    this.controller,
    required this.labelText,
  }) : super(key: key);

  final String labelText;
  final String hintText;
  final bool isSecure;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Platzi.helpColor,
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(143, 148, 251, .2),
            blurRadius: 20.0,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Center(
        child: TextField(
          obscureText: isSecure,
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(color: Platzi.mainColor, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
