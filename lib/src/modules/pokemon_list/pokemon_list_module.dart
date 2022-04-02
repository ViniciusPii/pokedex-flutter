import 'pokemon_list_bindings.dart';
import 'pokemon_list_page.dart';
import 'package:get/get.dart';

class PokemonListModule {
  final GetPage route = GetPage(
    name: '/pokemon/list',
    page: () => const PokemonListPage(),
    binding: PokemonListBindings(),
  );
}
