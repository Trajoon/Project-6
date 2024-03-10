import 'package:api_key_bloc/helper/constant/color.dart';
import 'package:api_key_bloc/view/SignUp/sing_up_view.dart';
import 'package:flutter/material.dart';

class ImagePacker extends StatelessWidget {
  ImagePacker(
      {super.key, this.isSelect, this.imgUrl, this.selectPath, this.onTap});

  final bool? isSelect;
  final String? imgUrl;
  final String? selectPath;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          getImage();
        },
        borderRadius: BorderRadius.circular(50),
        child: ClipOval(
          child: Container(
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Platzi.helpColor, Platzi.subColor],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isSelect == false && imgUrl == null)
                  const Icon(
                    Icons.add,
                    size: 40,
                  )
                else if (isSelect == true && selectPath != null)
                  Image.network(
                    selectPath!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
