import 'package:flutter/material.dart';
import 'package:pokemon/extensions/string_extension.dart';
import 'package:pokemon_api/api.dart';
import 'dart:math' as math;

class PokemonCard extends StatelessWidget {
  final String name;
  final int attack;
  final int defense;
  final String imageUrl;
  final List<PokemonTypesInner> types;
  const PokemonCard({
    super.key,
    required this.name,
    required this.attack,
    required this.defense,
    required this.imageUrl,
    required this.types,
  });

  @override
  Widget build(BuildContext context) {
    final containerWidth = MediaQuery.of(context).size.width / 3;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        elevation: 4,
        color: getBackgroundColor(),
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
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          name.capitalize(),
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          buildCircleParameterWithText('$attack', 'attack'),
                          buildCircleParameterWithText('$defense', 'defence'),
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
                      imageUrl,
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
                children: getTypes(types),
              ),
            )
          ],
        ),
      ),
    );
  }

  //TODO find out how to set color for type
  List<Widget> getTypes(
    List<PokemonTypesInner> types,
  ) {
    var list = <Widget>[];
    for (final type in types) {
      if (type.type != null &&
          type.type!.name != null &&
          !type.type!.name!.contains('http')) {
        list.add(Card(
          elevation: 3,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(35)),
              color: Colors.grey,
            ),
            child: Center(
                child: Text(
              type.type!.name!,
              style: const TextStyle(fontSize: 12),
            )),
          ),
        ));
      }
    }
    return list;
  }

  Column buildCircleParameterWithText(
    String number,
    String description,
  ) {
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
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ),
        Text(description)
      ],
    );
  }

  Color getBackgroundColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
        .withOpacity(1.0);
  }
}
