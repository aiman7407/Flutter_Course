import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_session/blocs/pokemon/pokemon_cubit.dart';
import 'package:pokemon_session/src/media_query_view.dart';
import 'package:pokemon_session/views/pokemons_view.dart';



class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => PokemonCubit()..getAllPokemons())
      ],
      child: MaterialApp(
        home: PokemonsView(),
      ),
    );
  }
}
