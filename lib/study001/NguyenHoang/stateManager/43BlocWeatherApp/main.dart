import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/settings_bloc.dart';
import 'blocs/theme_bloc.dart';
import 'blocs/weather_bloc.dart';
import 'blocs/weather_bloc_observer.dart';
import 'repositories/weather_repository.dart';
import 'package:http/http.dart' as http;
import 'screens/weather_screen.dart';
import 'states/theme_state.dart';

// void main() {
//   Bloc.observer = WeatherBlocObserver();
//   final WeatherRepository weatherRepository =
//       WeatherRepository(httpClient: http.Client());
//   //other blocs ?
//   runApp(BlocProvider<ThemeBloc>(
//     create: (context) => ThemeBloc(),
//     child: BlocProvider<SettingsBloc>(
//       create: (context) => SettingsBloc(),
//       child: MyApp(
//         weatherRepository: weatherRepository,
//       ),
//     ),
//   ));
// }

Widget noidung() {
  Bloc.observer = WeatherBlocObserver();
  final WeatherRepository weatherRepository =
      WeatherRepository(httpClient: http.Client());
  return BlocProvider<ThemeBloc>(
    create: (context) => ThemeBloc(),
    child: BlocProvider<SettingsBloc>(
      create: (context) => SettingsBloc(),
      child: MyApp(
        weatherRepository: weatherRepository,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final WeatherRepository weatherRepository;
  MyApp({Key? key, required this.weatherRepository})
      : assert(weatherRepository != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) {
        return MaterialApp(
            title: 'Flutter Weather App with Bloc',
            home: BlocProvider(
              create: (context) =>
                  WeatherBloc(weatherRepository: weatherRepository),
              child: WeatherScreen(),
            ));
      },
    );
  }
}
