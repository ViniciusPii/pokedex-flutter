import 'package:get/get.dart';
import 'pokemon_list_controller.dart';

class PokemonListBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => PokemonListController(
        pokemonService: Get.find(),
      ),
    );
  }
}
