part of 'root_bloc.dart';

class RootState {
  final int index;
  const RootState({required this.index});
}

final class RootInitial extends RootState {
  const RootInitial({super.index = 0});
}
