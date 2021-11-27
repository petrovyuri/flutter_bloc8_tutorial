import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterBloc extends Cubit<CounterState> {
  CounterBloc()
      : super(const CounterState(
          firstCount: 0,
          secondCount: 0,
        ));

  void incrementFirst() {
    emit(CounterState(
      firstCount: state.firstCount + 1,
      secondCount: state.secondCount,
    ));
  }

  void incrementSecond() {
    emit(CounterState(
      firstCount: state.firstCount,
      secondCount: state.secondCount + 1,
    ));
  }
}
