part of 'category_bloc.dart';

@immutable
sealed class CategoryState {}

final class CategoryInitial extends CategoryState {}

class LoadCategoryState extends CategoryState {}

class SuccussCategoryState extends CategoryState {
  final List<CategoryStore> category;

  SuccussCategoryState(this.category);
}

class ErrorState extends CategoryState{}
