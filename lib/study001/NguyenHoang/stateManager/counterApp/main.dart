import 'blocs/counter_bloc.dart';
import 'counter_page.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Now we need to install bloc
  //We have 2 Events => Increase / Descrease
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Increment / Decrement Counter App using Bloc',
        home: BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
          child: CounterPage(),
        ));
  }
}
