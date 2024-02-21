import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_api/api.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.searchInitial() = SearchInitial;
  const factory SearchState.searchLoading() = SearchLoading;
  const factory SearchState.searchLoaded(
    List<ExamplePokemon> pokemons,
  ) = SearchLoaded;
  const factory SearchState.searchError(String message) = SearchError;
}
