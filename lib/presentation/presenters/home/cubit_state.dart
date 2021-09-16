part of 'cubit_home_presenter.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class Initial extends HomeState {}

class Loading extends HomeState {}

class Error extends HomeState {
  final String message;
  Error(this.message);
}

class Done extends HomeState {
  final List<HomeViewModel> taskList;
  Done(this.taskList);
}
