import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokemon/model/pokemon_model.dart';

class PokeApi {
  static const String _url =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  static Future<List<PokemonModel>> getPokemonData() async {
    List<PokemonModel> list = [];
    var result = await Dio().get(_url);
    var pokemonList = jsonDecode(result.data)['pokemon'];
    if (pokemonList is List) {
      list = pokemonList.map((e) => PokemonModel.fromJson(e)).toList();
    } else {
      return [];
    }
    debugPrint(list.first.toString());
    return list;
  }
}
