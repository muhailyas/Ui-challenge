import 'package:bloc/bloc.dart';
import 'package:day1/pages/for_you/for_you.dart';
import 'package:day1/pages/home/home.dart';
import 'package:day1/pages/interests/interests.dart';
import 'package:day1/pages/profile/profile.dart';
part 'root_event.dart';
part 'root_state.dart';

class RootBloc extends Bloc<RootEvent, RootState> {
  final screens = [
    const ScreenHome(),
    const ScreenForyou(),
    const ScreenInterests(),
    const ScreenProfile()
  ];
  RootBloc() : super(const RootInitial()) {
    on<IndexChanger>((event, emit) {
      emit(RootState(index: event.index));
    });
  }
}
