//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PokemonSprites {
  /// Returns a new [PokemonSprites] instance.
  PokemonSprites({
    this.other,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PokemonSpritesOther? other;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is PokemonSprites && other.other == other;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (other == null ? 0 : other!.hashCode);

  @override
  String toString() => 'PokemonSprites[other=$other]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.other != null) {
      json[r'other'] = this.other;
    } else {
      json[r'other'] = null;
    }
    return json;
  }

  /// Returns a new [PokemonSprites] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PokemonSprites? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PokemonSprites[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PokemonSprites[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PokemonSprites(
        other: PokemonSpritesOther.fromJson(json[r'other']),
      );
    }
    return null;
  }

  static List<PokemonSprites> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PokemonSprites>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PokemonSprites.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PokemonSprites> mapFromJson(dynamic json) {
    final map = <String, PokemonSprites>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PokemonSprites.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PokemonSprites-objects as value to a dart map
  static Map<String, List<PokemonSprites>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PokemonSprites>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PokemonSprites.listFromJson(
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
