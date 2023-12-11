// // ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {
  final int initialSate;
  CounterInitial({
    required this.initialSate,
  });
}
// 