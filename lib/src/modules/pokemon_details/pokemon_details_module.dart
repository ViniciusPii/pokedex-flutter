import 'pokemon_details_bindings.dart';
import 'pokemon_details_page.dart';
import 'package:get/get.dart';

class PokemonDetailsModule {
  final GetPage route = GetPage(
    name: '/pokemon/details',
    page: () => const PokemonDetailsPage(),
    binding: PokemonDetailsBindings(),
  );
}
