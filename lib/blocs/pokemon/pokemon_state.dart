part of 'pokemon_cubit.dart';

@immutable
abstract class PokemonState {}

class PokemonInitial extends PokemonState {}

class PokemonGetSuccessState extends PokemonState{}
class PokemonGetLoadingState extends PokemonState{}
class PokemonGetErrorState extends PokemonState{}



