import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pokemon/constants/app_constants.dart';
import 'package:pokemon/features/search/application/search_cubit.dart';
import 'package:pokemon/features/search/application/search_state.dart';
import 'package:pokemon/widgets/pokemon_card.dart';
import 'package:pokemon_api/api.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<SearchCubit>(
        create: (context) => SearchCubit(),
        child: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: SvgPicture.asset(
                  ImageAssetsPath.pokemonImageAssetPath,
                  width: 80,
                ),
                backgroundColor: HexColor('#F5DB13'),
                //title: Text('Pokemon'),
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SvgPicture.asset(
                            ImageAssetsPath.pokemonImageAssetPath,
                            width: 80,
                          ),
                          const Text(
                            'Pokedex Flutter App',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                        color: Colors.grey[200],
                      ),
                      child: TextField(
                        onSubmitted: (input) async {
                          await context.readSearchCubit.getPokemon(input);
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(2.0),
                          constraints: BoxConstraints(maxHeight: 40),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    state.maybeWhen(
                      searchLoading: () => showLoadingScreen(),
                      searchLoaded: showLoadedItem,
                      orElse: () => showEmptyScreen(),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Expanded showEmptyScreen() {
    return const Expanded(
      child: Center(
        child: Text('is Empty'),
      ),
    );
  }

  Expanded showLoadingScreen() {
    return const Expanded(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget showLoadedItem(List<ExamplePokemon> items) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final pokemon = items[index];
                  return PokemonCard(
                    name: pokemon.name ?? '',
                    attack: _getValueForParameter(pokemon.stats, 'attack'),
                    defense: _getValueForParameter(pokemon.stats, 'defense'),
                    imageUrl: pokemon.sprites != null &&
                            pokemon.sprites!.other != null &&
                            pokemon.sprites!.other!.home != null
                        ? pokemon.sprites!.other!.home!.frontDefault!
                        : '',
                    types: pokemon.types,
                  );
                }),
          ],
        ),
      ),
    );
  }

  int _getValueForParameter(List<PokemonStatsInner> stats, String parameter) {
    if (stats.isEmpty) return 0;
    final result = stats.firstWhere(
        (element) => element.stat != null && element.stat!.name == parameter);
    return result.baseStat != null ? result.baseStat! : 0;
  }
}
