import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_block_app/data/cart_item.dart';
import 'package:flutter_block_app/features/home/models/home_product_data_model.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
  }

  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccesState(cartItems: cartItems));
  }
}
