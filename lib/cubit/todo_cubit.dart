import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:learn_flutter_bloc/models/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  final List<Todo> todos = [];

  TodoCubit() : super([]);

  void addTodo(String name) {
    if (name.isEmpty) {
      addError('name cannot be empty');
      return;
    }
    final todo = Todo(name: name, createdAt: DateTime.now());
    emit([...todos, todo]);
  }

  @override
  void onChange(Change<List<Todo>> change) {
    dev.log('Todo cubit: $change');
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    dev.log('Todo cubit error: $error');
    super.onError(error, stackTrace);
  }
}
