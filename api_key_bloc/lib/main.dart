import 'package:api_key_bloc/models/product.dart';
import 'package:api_key_bloc/view/Admin/admin_view.dart';
import 'package:api_key_bloc/view/Category/bloc/category_bloc.dart';
import 'package:api_key_bloc/view/Login/bloc/authentication_bloc.dart';
import 'package:api_key_bloc/view/Login/sing_in%20_view.dart';
import 'package:api_key_bloc/view/Product/bloc/product_bloc.dart';
import 'package:api_key_bloc/view/SignUp/bloc/sing_up_bloc.dart';
import 'package:api_key_bloc/view/SignUp/sing_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CategoryBloc(),
        ),
        BlocProvider(
          create: (context) => ProductBloc(),
        ),
        BlocProvider(
          create: (context) => AuthenticationBloc()
        ),
         BlocProvider(
          create: (context) => SingUpBloc()
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
      ),
    );
  }
}
