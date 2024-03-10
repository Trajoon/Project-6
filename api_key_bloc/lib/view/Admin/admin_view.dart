import 'package:api_key_bloc/Widgets/list_tile_widget.dart';
import 'package:api_key_bloc/helper/constant/color.dart';
import 'package:api_key_bloc/helper/constant/spece.dart';
import 'package:flutter/material.dart';

class AdminView extends StatelessWidget {
  const AdminView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Platzi.pageColor,
      appBar: AppBar(
        title: const Text('List of Users'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: const [
            ListTileWidget(
              title: ('Name: Sultan'),
              subtitle: ("Email: sultan@gamil.com"),
            ),
            ListTileWidget(
              title: ('Name: Sultan'),
              subtitle: ("Email: sultan@gamil.com"),
            ),
            ListTileWidget(
              title: ('Name: Sultan'),
              subtitle: ("Email: sultan@gamil.com"),
            ),
          ],
        ),
      ),
    );
  }
}
