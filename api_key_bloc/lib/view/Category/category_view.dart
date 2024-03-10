import 'package:api_key_bloc/Widgets/category_widget.dart';
import 'package:api_key_bloc/helper/constant/color.dart';
import 'package:api_key_bloc/view/Category/bloc/category_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CategoryBloc>().add(ShowCategoryEvent());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Discover Category",
          style: TextStyle(color: Platzi.pageColor, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Platzi.helpColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: BlocBuilder<CategoryBloc, CategoryState>(
            builder: (context, state) {
              if (state is LoadCategoryState) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is SuccussCategoryState) {
                return ListView.builder(
                    itemCount: state.category.length,
                    itemBuilder: (context, index) {
                      return CategoryWidget(
                        category: state.category[index],
                      );
                    });
              } else {
                return Text("Error");
              }
            },
          ),
        ),
      ),
    );
  }
}







