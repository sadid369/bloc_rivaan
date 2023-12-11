import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<Increment>(increment);
    on<Decrement>(decrement);
  }

  void increment(event, emit) {
    emit(state + 1);
  }

  void decrement(event, emit) {
    emit(state - 1);
  }
}
