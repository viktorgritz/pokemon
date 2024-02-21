//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PokemonMovesInner {
  /// Returns a new [PokemonMovesInner] instance.
  PokemonMovesInner({
    this.move,
    this.versionGroupDetails = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? move;

  List<PokemonMovesInnerVersionGroupDetailsInner> versionGroupDetails;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonMovesInner &&
          other.move == move &&
          _deepEquality.equals(other.versionGroupDetails, versionGroupDetails);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (move == null ? 0 : move!.hashCode) + (versionGroupDetails.hashCode);

  @override
  String toString() =>
      'PokemonMovesInner[move=$move, versionGroupDetails=$versionGroupDetails]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.move != null) {
      json[r'move'] = this.move;
    } else {
      json[r'move'] = null;
    }
    json[r'version_group_details'] = this.versionGroupDetails;
    return json;
  }

  /// Returns a new [PokemonMovesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PokemonMovesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PokemonMovesInner[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PokemonMovesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PokemonMovesInner(
        move: mapValueOfType<Object>(json, r'move'),
        versionGroupDetails:
            PokemonMovesInnerVersionGroupDetailsInner.listFromJson(
                json[r'version_group_details']),
      );
    }
    return null;
  }

  static List<PokemonMovesInner> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PokemonMovesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PokemonMovesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PokemonMovesInner> mapFromJson(dynamic json) {
    final map = <String, PokemonMovesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PokemonMovesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PokemonMovesInner-objects as value to a dart map
  static Map<String, List<PokemonMovesInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PokemonMovesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PokemonMovesInner.listFromJson(
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
