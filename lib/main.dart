import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
// import 'study001/vidu001/mh1.dart';
// import 'study001/manyScreen/controler.dart';
// import 'study001/test001/test001.dart';
// import 'study001/test001/test003.dart';
// import 'study001/callEmail/vidu002.dart';
// import 'study001/loginRegister/loginSimple002/controler.dart';
// import 'study001/textFild/textFild002.dart';

// import 'study001/listView/listView002.dart';
// import 'study001/loginRegister/loginSimple002/controler.dart';
import 'study001/bloc001/bloc001.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_services_binding/flutter_services_binding.dart';
// import ' app.dart';
import 'study001/bloc001/weatherApp001/app.dart';
// import 'weather_bloc_observer.dart';
import 'study001/bloc001/weatherApp001/weather_bloc_observer.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:weather_repository/weather_repository.dart';

import 'study001/video/videoPlayer001.dart';

// void main() async {
//   FlutterServicesBinding.ensureInitialized();
//   final storage = await HydratedStorage.build(
//     storageDirectory: kIsWeb
//         ? HydratedStorage.webStorageDirectory
//         : await getTemporaryDirectory(),
//   );
//   HydratedBlocOverrides.runZoned(
//     () => runApp(WeatherApp(weatherRepository: WeatherRepository())),
//     blocObserver: WeatherBlocObserver(),
//     storage: storage,
//   );
// }

// void main() =>runApp(Manhinh1());
// void main() =>runApp(Vidu002());
// void main() => runApp(Test003());
// void main() => runApp(MyAnimationApp());

void main() => runApp(MyApp());
