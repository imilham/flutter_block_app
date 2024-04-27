part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class HomeProductWishlistButtonClickedEvent extends HomeEvent {
  final ProductDataModel clickedProducts;

  HomeProductWishlistButtonClickedEvent({required this.clickedProducts});
}

class HomeProductCartButtonClickedEvent extends HomeEvent {
  final ProductDataModel clickedProducts;

  HomeProductCartButtonClickedEvent({required this.clickedProducts});
}

class HomeWishlistButtonNavigateEvent extends HomeEvent {}

class HomeCartButtonNavigateEvent extends HomeEvent {}
