part of 'cart_bloc.dart';

@immutable
sealed class CartState {}

abstract class CartActionState extends CartState {}

final class CartInitial extends CartState {}

class CartSuccesState extends CartState {
  final List<ProductDataModel> cartItems;

  CartSuccesState({required this.cartItems});
}
