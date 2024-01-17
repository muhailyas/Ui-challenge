part of 'root_bloc.dart';

class RootEvent {}

class IndexChanger extends RootEvent {
  final int index;
  IndexChanger({required this.index});
}
