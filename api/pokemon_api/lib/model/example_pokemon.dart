//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExamplePokemon {
  /// Returns a new [ExamplePokemon] instance.
  ExamplePokemon({
    this.id,
    this.name,
    this.baseExperience,
    this.height,
    this.isDefault,
    this.order,
    this.abilities = const [],
    this.moves = const [],
    this.stats = const [],
    this.types = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? baseExperience;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? height;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDefault;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? order;

  List<PokemonAbilitiesInner> abilities;

  List<PokemonMovesInner> moves;

  List<PokemonStatsInner> stats;

  List<PokemonTypesInner> types;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExamplePokemon &&
          other.id == id &&
          other.name == name &&
          other.baseExperience == baseExperience &&
          other.height == height &&
          other.isDefault == isDefault &&
          other.order == order &&
          _deepEquality.equals(other.abilities, abilities) &&
          _deepEquality.equals(other.moves, moves) &&
          _deepEquality.equals(other.stats, stats) &&
          _deepEquality.equals(other.types, types);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (baseExperience == null ? 0 : baseExperience!.hashCode) +
      (height == null ? 0 : height!.hashCode) +
      (isDefault == null ? 0 : isDefault!.hashCode) +
      (order == null ? 0 : order!.hashCode) +
      (abilities.hashCode) +
      (moves.hashCode) +
      (stats.hashCode) +
      (types.hashCode);

  @override
  String toString() =>
      'ExamplePokemon[id=$id, name=$name, baseExperience=$baseExperience, height=$height, isDefault=$isDefault, order=$order, abilities=$abilities, moves=$moves, stats=$stats, types=$types]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.baseExperience != null) {
      json[r'base_experience'] = this.baseExperience;
    } else {
      json[r'base_experience'] = null;
    }
    if (this.height != null) {
      json[r'height'] = this.height;
    } else {
      json[r'height'] = null;
    }
    if (this.isDefault != null) {
      json[r'is_default'] = this.isDefault;
    } else {
      json[r'is_default'] = null;
    }
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
    json[r'abilities'] = this.abilities;
    json[r'moves'] = this.moves;
    json[r'stats'] = this.stats;
    json[r'types'] = this.types;
    return json;
  }

  /// Returns a new [ExamplePokemon] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExamplePokemon? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ExamplePokemon[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ExamplePokemon[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExamplePokemon(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        baseExperience: mapValueOfType<int>(json, r'base_experience'),
        height: mapValueOfType<int>(json, r'height'),
        isDefault: mapValueOfType<bool>(json, r'is_default'),
        order: mapValueOfType<int>(json, r'order'),
        abilities: PokemonAbilitiesInner.listFromJson(json[r'abilities']),
        moves: PokemonMovesInner.listFromJson(json[r'moves']),
        stats: PokemonStatsInner.listFromJson(json[r'stats']),
        types: PokemonTypesInner.listFromJson(json[r'types']),
      );
    }
    return null;
  }

  static List<ExamplePokemon> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ExamplePokemon>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExamplePokemon.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExamplePokemon> mapFromJson(dynamic json) {
    final map = <String, ExamplePokemon>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExamplePokemon.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExamplePokemon-objects as value to a dart map
  static Map<String, List<ExamplePokemon>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ExamplePokemon>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExamplePokemon.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
