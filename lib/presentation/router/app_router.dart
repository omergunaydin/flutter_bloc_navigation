import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_navigation/logic/cubit/counter_cubit.dart';
import 'package:flutter_bloc_navigation/presentation/screens/home_screen.dart';
import 'package:flutter_bloc_navigation/presentation/screens/second_screen.dart';
import 'package:flutter_bloc_navigation/presentation/screens/third_screen.dart';

class AppRouter {
  final CounterCubit _counterCubit = CounterCubit();

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: _counterCubit,
            child: const HomeScreen(title: 'HomeScreen', color: Colors.blueAccent),
          ),
        );

      case '/second':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: _counterCubit,
            child: const SecondScreen(title: 'SecondScreen', color: Colors.redAccent),
          ),
        );
      case '/third':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: _counterCubit,
            child: const ThirdScreen(title: 'ThirdScreen', color: Colors.greenAccent),
          ),
        );
      default:
        return null;
    }
  }

  void dispose() {
    _counterCubit.close();
  }
}
