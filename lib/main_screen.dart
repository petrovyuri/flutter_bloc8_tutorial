import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: const _MainScreenView(),
    );
  }
}

class _MainScreenView extends StatelessWidget {
  const _MainScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _AppCounter(
                  count: state.firstCount,
                  increment: () {
                    context.read<CounterBloc>().incrementFirst();
                  },
                ),
                _AppCounter(
                  count: state.secondCount,
                  increment: () {
                    context.read<CounterBloc>().incrementSecond();
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _AppCounter extends StatelessWidget {
  final int count;
  final Function() increment;

  const _AppCounter({Key? key, required this.count, required this.increment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "$count",
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        MaterialButton(
          color: Colors.blue,
          padding: const EdgeInsets.all(16),
          shape: const CircleBorder(),
          onPressed: increment,
          child: const Text(
            "+1",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        )
      ],
    );
  }
}
