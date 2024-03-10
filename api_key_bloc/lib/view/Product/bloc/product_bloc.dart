import 'package:api_key_bloc/models/product.dart';
import 'package:api_key_bloc/service/api.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<ShowProductEvent>((event, emit) async {
      emit(LoadProductState());

      try {
        final products = await UserService().generateProduct();
        emit(SuccussProductState(products));
      } catch (e) {
        emit(ErrorState());
      }
    });
  }
}
