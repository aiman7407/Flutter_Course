import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:pokemon_session/model/pokemon.dart';
import 'package:pokemon_session/service/dio_helper/dio_service.dart';

part 'pokemon_state.dart';

class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit() : super(PokemonInitial());

  static PokemonCubit get(context) => BlocProvider.of(context);

  List<Pokemon> pokemons = [];
  PokeHub pokeHub;

  getAllPokemons() {
    DioHelper.getData().then((value) {
      emit(PokemonGetLoadingState());

      var jsonData = jsonDecode(value.data);

      pokeHub = PokeHub.fromJson(jsonData);

      for (var pokemon in pokeHub.pokemon) pokemons.add(pokemon);

      emit(PokemonGetSuccessState());

      return pokemons;
    }).catchError((error) {
      print('error');
      print(error.toString());
      emit(PokemonGetErrorState());
    });
  }
}
