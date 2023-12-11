import 'package:bloc/bloc.dart';
import 'package:bloc_rivaan/models/todo.dart';
import 'package:meta/meta.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    var newTodo = Todo(title: title, createdAt: DateTime.now());
    emit([...state, newTodo]);
  }
}
