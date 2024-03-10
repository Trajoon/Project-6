part of 'product_bloc.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

class LoadProductState extends ProductState {}

class SuccussProductState extends ProductState {
  final List<Product> product;

  SuccussProductState(this.product);
}

class ErrorState extends ProductState{}