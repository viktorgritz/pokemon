//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PokemonAbilitiesInner {
  /// Returns a new [PokemonAbilitiesInner] instance.
  PokemonAbilitiesInner({
    this.ability,
    this.isHidden,
    this.slot,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? ability;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isHidden;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? slot;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonAbilitiesInner &&
          other.ability == ability &&
          other.isHidden == isHidden &&
          other.slot == slot;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (ability == null ? 0 : ability!.hashCode) +
      (isHidden == null ? 0 : isHidden!.hashCode) +
      (slot == null ? 0 : slot!.hashCode);

  @override
  String toString() =>
      'PokemonAbilitiesInner[ability=$ability, isHidden=$isHidden, slot=$slot]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ability != null) {
      json[r'ability'] = this.ability;
    } else {
      json[r'ability'] = null;
    }
    if (this.isHidden != null) {
      json[r'is_hidden'] = this.isHidden;
    } else {
      json[r'is_hidden'] = null;
    }
    if (this.slot != null) {
      json[r'slot'] = this.slot;
    } else {
      json[r'slot'] = null;
    }
    return json;
  }

  /// Returns a new [PokemonAbilitiesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PokemonAbilitiesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PokemonAbilitiesInner[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PokemonAbilitiesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PokemonAbilitiesInner(
        ability: mapValueOfType<Object>(json, r'ability'),
        isHidden: mapValueOfType<bool>(json, r'is_hidden'),
        slot: mapValueOfType<int>(json, r'slot'),
      );
    }
    return null;
  }

  static List<PokemonAbilitiesInner> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PokemonAbilitiesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PokemonAbilitiesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PokemonAbilitiesInner> mapFromJson(dynamic json) {
    final map = <String, PokemonAbilitiesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PokemonAbilitiesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PokemonAbilitiesInner-objects as value to a dart map
  static Map<String, List<PokemonAbilitiesInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PokemonAbilitiesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PokemonAbilitiesInner.listFromJson(
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
