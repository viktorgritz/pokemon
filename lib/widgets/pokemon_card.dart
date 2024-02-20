import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 3,
              child: Column(
                children: <Widget>[
                  Text(
                    'Pokemon 1',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      buildParameterWithText('419', 'attack'),
                      buildParameterWithText('49', 'defence'),
                    ],
                  )
                ],
              ),
            ),
            Image.network(
              'https://assets.pokemon.com/assets/cms2/img/pokedex/full/921.png',
              width: 150,
            )
          ],
        ),
      ),
    );
  }

  Column buildParameterWithText(String number, String description) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: 20,
          child: CircleAvatar(
            child: Text(number),
            radius: 17,
            backgroundColor: Colors.white,
          ),
        ),
        Text(description)
      ],
    );
  }
}
