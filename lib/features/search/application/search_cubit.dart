import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon/features/search/application/search_state.dart';
import 'package:pokemon_api/api.dart';

@Injectable()
class SearchCubit extends Cubit<SearchState> {
  final pokemonApi = DefaultApi();
  SearchCubit() : super(const SearchInitial());

  Future<void> getPokemon(String name) async {
    if (name.isEmpty) return;
    emit(const SearchInitial());
    try {
      emit(const SearchLoading());
      final result = await pokemonApi.apiV2PokemonNameGetWithHttpInfo(name);
      final Map parsed = json.decode(result.body);
      final pokemon = ExamplePokemon.fromJson(parsed);
      if (pokemon != null) {
        emit(SearchLoaded([pokemon]));
      } else {
        emit(const SearchInitial());
      }
    } catch (error) {
      emit(SearchError(error.toString()));
    }
  }
}

extension SearchCubitExt on BuildContext {
  SearchCubit get readSearchCubit => read();
  SearchCubit get watchSearchCubit => watch();
}
