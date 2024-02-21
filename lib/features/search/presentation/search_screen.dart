import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pokemon/constants/app_constants.dart';
import 'package:pokemon/widgets/pokemon_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: SvgPicture.asset(
            ImageAssetsPath.pokemonImageAssetPath,
            width: 80,
          ),
          backgroundColor: HexColor('#F5DB13'),
          //title: Text('Pokemon'),
        ),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SvgPicture.asset(
                  ImageAssetsPath.pokemonImageAssetPath,
                  width: 80,
                ),
                const Text(
                  'Pokedex Flutter App',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                )
              ],
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
              child: SearchBar(
                leading: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: 'Search',
                hintStyle: MaterialStateProperty.all(
                  const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                constraints: const BoxConstraints(maxHeight: 40),
                backgroundColor:
                    MaterialStateProperty.all(Colors.grey.shade200),
                elevation: MaterialStateProperty.all(0),
              ),
            ),
            PokemonCard(),
          ],
        ),
      ),
    );
  }
}
