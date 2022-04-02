import 'package:get/get.dart';
import 'package:pokedex_v2/src/repositories/pokemon/pokemon_repository.dart';
import 'package:pokedex_v2/src/repositories/pokemon/pokemon_repository_impl.dart';
import 'package:pokedex_v2/src/services/pokemon/pokemon_service.dart';
import 'package:pokedex_v2/src/services/pokemon/pokemon_service_impl.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PokemonRepository>(
      () => PokemonRepositoryImpl(),
      fenix: true,
    );

    Get.lazyPut<PokemonService>(
      () => PokemonServiceImpl(
        pokemonRepository: Get.find(),
      ),
      fenix: true,
    );
  }
}
