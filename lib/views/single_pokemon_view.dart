import 'package:flutter/material.dart';
import 'package:pokemon_session/model/pokemon.dart';

class SinglePokemonView extends StatelessWidget {

  final Pokemon pokemon;


  SinglePokemonView({this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00BCD4),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff00BCD4),
        title: Text(pokemon.name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80,
              left: 20,
                bottom:100,
                right: 20
              ),
              child: Container(

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 10,),
                    Text(pokemon.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),
                    ),
                    Text('Height: ${pokemon.height}'),
                    Text('Weight ${pokemon.weight} ',),
                    Text('Types',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: pokemon.type.map((e) =>
                          Container(
                            padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Text(e))).toList(),
                    ),
                    Text('Weakness',
                    style: TextStyle(
                      fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: pokemon.weaknesses.map((e) => Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Text(e,
                          style: TextStyle(color: Colors.white),
                          ))).toList(),
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(
              height:150,
              child: Image.network(
                pokemon.img,

                fit: BoxFit.cover,
              ),
            )


          ],
        ),
      )
    );
  }
}
