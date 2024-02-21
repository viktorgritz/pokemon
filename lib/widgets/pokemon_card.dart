import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({super.key});

  @override
  Widget build(BuildContext context) {
    final containerWidth = MediaQuery.of(context).size.width / 3;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        color: Colors.amberAccent,
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    color: Colors.white,
                  ),
                  width: containerWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Pokemon 1',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          buildParameterWithText('419', 'attack'),
                          buildParameterWithText('49', 'defence'),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Image.network(
                      'https://assets.pokemon.com/assets/cms2/img/pokedex/full/921.png',
                      width: 150,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 10,
              left: 15,
              child: Row(
                children: [
                  typesItem(HexColor('#73D677'), 'Grass'),
                  typesItem(HexColor('#07D6F2'), 'Poison'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget typesItem(Color? color, String title) {
    return Card(
      elevation: 3,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(35)),
          color: color ?? Colors.grey,
        ),
        child: Center(
            child: Text(
          title,
          style: TextStyle(fontSize: 12),
        )),
      ),
    );
  }

  Column buildParameterWithText(String number, String description) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: 17,
          child: CircleAvatar(
            radius: 14,
            backgroundColor: Colors.white,
            child: Text(
              number,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
        Text(description)
      ],
    );
  }
}
