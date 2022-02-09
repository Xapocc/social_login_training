import 'package:equatable/equatable.dart';

abstract class RouterState extends Equatable {
  const RouterState() : super();
}

class RouterStateLoginScreen extends RouterState {
  const RouterStateLoginScreen() : super();

  @override
  List<Object?> get props => [];
}

class RouterStateHomeScreen extends RouterState {
  const RouterStateHomeScreen() : super();

  @override
  List<Object?> get props => [];
}