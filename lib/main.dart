import 'package:bloc_rivaan/add_todo_page.dart';
import 'package:bloc_rivaan/bloc/counter_bloc.dart';
import 'package:bloc_rivaan/cubit/counter_cubit.dart';
import 'package:bloc_rivaan/cubit/todo_cubit.dart';
import 'package:bloc_rivaan/home_page.dart';
import 'package:bloc_rivaan/login_screen.dart';
import 'package:bloc_rivaan/pallete.dart';
import 'package:bloc_rivaan/todo_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => TodoCubit(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Pallete.backgroundColor,
      ),
      home: const LoginScreen(),
    );
  }
}
