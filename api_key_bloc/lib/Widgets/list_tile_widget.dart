import 'package:api_key_bloc/helper/constant/color.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: ListTile(
        title: Text('Name: $title'),
        subtitle: Text("Email: $subtitle"),
        selectedColor: Platzi.oceanColor,
        tileColor: Platzi.subColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onTap: () {},
      ),
    );
  }
}
