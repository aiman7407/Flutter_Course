import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_session/blocs/pokemon/pokemon_cubit.dart';
import 'package:pokemon_session/views/single_pokemon_view.dart';

class PokemonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PokemonCubit, PokemonState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = PokemonCubit.get(context);
        return cubit.pokemons.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Scaffold(
                appBar: AppBar(
                  title: Text(
                    'Poke App',
                  ),
                  centerTitle: true,
                  backgroundColor: Color(0xff00BCD4),
                ),
                body: GridView.builder(
                  padding: EdgeInsets.all(20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 18,
                      crossAxisSpacing: 18,
                      crossAxisCount: 2),
                  itemCount: cubit.pokemons.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SinglePokemonView(
                              pokemon: cubit.pokemons[index],
                            ),
                          ),
                        );
                      },
                      child: Material(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Image.network(cubit.pokemons[index].img),
                                Flexible(
                                  child: Text(
                                    cubit.pokemons[index].name,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ));
      },
    );
  }
}
