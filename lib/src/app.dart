import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pokedex_v2/src/core/bindings/app_bindings.dart';
import 'package:pokedex_v2/src/core/theme/app_theme.dart';

import 'modules/pokemon_list/pokemon_list_module.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.defaultTheme,
      initialRoute: 'pokemon/list',
      initialBinding: AppBindings(),
      debugShowCheckedModeBanner: false,
      getPages: [
        PokemonListModule().route,
      ],
    );
  }
}
