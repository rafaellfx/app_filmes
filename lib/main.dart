import 'package:app_filmes/application/bindings/aplications_bindings.dart';
import 'package:app_filmes/application/ui/filme_app_ui_config.dart';
import 'package:app_filmes/models/movie_model.dart';
import 'package:app_filmes/modules/home/home_module.dart';
import 'package:app_filmes/modules/movie_detail/movie_detail_module.dart';
import 'package:app_filmes/modules/splash/splash_module.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'modules/login/login_module.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  RemoteConfig.instance.fetchAndActivate();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: FilmeAppUiConfig.title,
      initialBinding: AplicationsBindings(),
      theme: FilmeAppUiConfig.theme,
      getPages: [
        ...SplashModule().routers,
        ...LoginModule().routers,
        ...HomeModule().routers,
        ...MovieDetailModule().routers,
      ],
    );
  }
}
