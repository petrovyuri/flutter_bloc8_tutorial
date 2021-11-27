part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class IncrementedFirstCounterEvent extends CounterEvent {}

class IncrementedSecondCounterEvent extends CounterEvent {}
