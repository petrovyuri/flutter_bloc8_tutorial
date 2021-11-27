part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int firstCount;
  final int secondCount;

  const CounterState({
    required this.firstCount,
    required this.secondCount,
  });

  @override
  List<Object?> get props => [firstCount, secondCount];
}
