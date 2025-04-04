import 'package:bloc/bloc.dart';
import 'package:learn_flutter_bloc/models/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);
}
