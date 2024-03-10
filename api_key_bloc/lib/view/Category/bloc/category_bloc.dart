import 'package:api_key_bloc/models/category.dart';
import 'package:api_key_bloc/service/api.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryInitial()) {
    on<ShowCategoryEvent>((event, emit) async {
      emit(LoadCategoryState());
      try {
        final characters = await UserService().generateCategory();
        emit(SuccussCategoryState(characters)); 
      } catch (e) {
        emit(ErrorState());
      }
    });
  }
}
