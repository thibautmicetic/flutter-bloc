import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter_bloc/cubit/counter_cubit.dart';

class IncDecPage extends StatelessWidget {
  const IncDecPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Increment or decrement')),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: counterCubit.increment, tooltip: 'Increment', child: const Icon(Icons.add)),
          SizedBox(height: 10),
          FloatingActionButton(onPressed: counterCubit.decrement, tooltip: 'Decrement', child: const Icon(Icons.remove)),
        ],
      ),
    );
  }
}
