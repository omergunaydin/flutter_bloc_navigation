import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_navigation/presentation/router/app_router.dart';
import 'package:flutter_bloc_navigation/presentation/screens/home_screen.dart';
import 'package:flutter_bloc_navigation/presentation/screens/second_screen.dart';
import 'package:flutter_bloc_navigation/presentation/screens/third_screen.dart';

import 'logic/cubit/counter_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }

  @override
  void dispose() {
    _appRouter.dispose();
    super.dispose();
  }
}

/* 
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final CounterCubit _counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        /*home: const HomeScreen(
          title: 'Flutter Demo Home Page',
          color: Colors.blueAccent,
        ),*/
        /*routes: {
          '/': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const HomeScreen(title: 'Home Screen', color: Colors.blueAccent),
              ),
          '/second': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const SecondScreen(title: 'Second Screen', color: Colors.redAccent),
              ),
          '/third': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const ThirdScreen(title: 'Third Screen', color: Colors.greenAccent),
              ),
        },*/
      ),
    );
  }
}
  */