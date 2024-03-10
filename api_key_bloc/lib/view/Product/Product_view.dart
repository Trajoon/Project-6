import 'package:api_key_bloc/Widgets/Container_product.dart';
import 'package:api_key_bloc/Widgets/slider_widget.dart';
import 'package:api_key_bloc/helper/constant/color.dart';
import 'package:api_key_bloc/helper/constant/spece.dart';
import 'package:api_key_bloc/helper/extensions/assistant.dart';
import 'package:api_key_bloc/view/Explore/explore_view.dart';
import 'package:api_key_bloc/view/Product/bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProductBloc>().add(ShowProductEvent());
    return Scaffold(
      backgroundColor: Platzi.pageColor,
      body: Column(
        children: [
          Container(
            height: context.getHeight(context) / 3.80,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/image/jeff-sheldon-9SyOKYrq-rE-unsplash.jpg"),
                    fit: BoxFit.cover)),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.1),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          context.push(context, ExploreView());
                        },
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  size120,
                  const Text(
                    "Discover the magic of our products! 🌟",
                    style: TextStyle(color: Platzi.pageColor, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          size24,
          SliderWidget(),
          size12,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Our Product",
                  style: TextStyle(
                      color: Platzi.oceanColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "View More",
                      style: TextStyle(color: Platzi.helpColor),
                    ),
                    size6,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 11,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  if (state is LoadProductState) {
                    Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is SuccussProductState) {
                    return ListView.builder(
                      itemCount: state.product.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return  ProductWidget(
                          product: state.product[index],
                        );
                      },
                    );
                  } else {
                    return Center(child: Text("Error"));
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
