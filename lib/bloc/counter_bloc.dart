import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc()
      : super(const CounterState(
          firstCount: 0,
          secondCount: 0,
        ));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is IncrementedFirstCounterEvent) {
      yield CounterState(
        firstCount: state.firstCount + 1,
        secondCount: state.secondCount,
      );
    } else {
      yield CounterState(
        firstCount: state.firstCount,
        secondCount: state.secondCount + 1,
      );
    }
  }
}
