// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'todo_cubit.dart';

@immutable
abstract class TodoState {}

class TodoInitialState extends TodoState {
  final List<Todo> todo;
  TodoInitialState({
    required this.todo,
  });
}

class TodoAddedState extends TodoState {
  final List<Todo> todo;
  TodoAddedState({
    required this.todo,
  });
}
