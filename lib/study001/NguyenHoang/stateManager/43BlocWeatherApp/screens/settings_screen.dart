import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/settings_bloc.dart';
import '../events/settings_event.dart';
import '../states/settings_state.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, settingState) {
              return ListTile(
                title: Text('Temperature Unit'),
                isThreeLine: true,
                subtitle: Text(
                    settingState.temperatureUnit == TemperatureUnit.celsius
                        ? 'Celsius'
                        : 'Fahrenheit'),
                trailing: Switch(
                    value:
                        settingState.temperatureUnit == TemperatureUnit.celsius,
                    onChanged: (_) => BlocProvider.of<SettingsBloc>(context)
                        .add(SettingsEventToggleUnit())),
              );
            },
          )
        ],
      ),
    );
  }
}
