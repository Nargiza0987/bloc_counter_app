import 'package:bloc_counter_app/example2/home_page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Detail2Page extends StatelessWidget {
  const Detail2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<CounterCubit, int>(builder: (context, state) {
          return Text('Detail Block Page: $state');
        }),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(builder: (context, state) {
                return Text(
                  "$state",
                  style: TextStyle(fontSize: 96), 
                );
              }),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          SizedBox(width: 50),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().increment(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
