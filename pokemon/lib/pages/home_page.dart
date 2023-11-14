import 'package:flutter/material.dart';
import 'package:pokemon/widgets/app_title.dart';
import 'package:pokemon/widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        AppTitle(),
        const Expanded(child: PokemonList()),
      ],
    ));
  }
}
