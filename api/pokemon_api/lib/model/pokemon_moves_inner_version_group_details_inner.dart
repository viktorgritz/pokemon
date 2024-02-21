//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PokemonMovesInnerVersionGroupDetailsInner {
  /// Returns a new [PokemonMovesInnerVersionGroupDetailsInner] instance.
  PokemonMovesInnerVersionGroupDetailsInner({
    this.levelLearnedAt,
    this.moveLearnMethod,
    this.versionGroup,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? levelLearnedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? moveLearnMethod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? versionGroup;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonMovesInnerVersionGroupDetailsInner &&
          other.levelLearnedAt == levelLearnedAt &&
          other.moveLearnMethod == moveLearnMethod &&
          other.versionGroup == versionGroup;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (levelLearnedAt == null ? 0 : levelLearnedAt!.hashCode) +
      (moveLearnMethod == null ? 0 : moveLearnMethod!.hashCode) +
      (versionGroup == null ? 0 : versionGroup!.hashCode);

  @override
  String toString() =>
      'PokemonMovesInnerVersionGroupDetailsInner[levelLearnedAt=$levelLearnedAt, moveLearnMethod=$moveLearnMethod, versionGroup=$versionGroup]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.levelLearnedAt != null) {
      json[r'level_learned_at'] = this.levelLearnedAt;
    } else {
      json[r'level_learned_at'] = null;
    }
    if (this.moveLearnMethod != null) {
      json[r'move_learn_method'] = this.moveLearnMethod;
    } else {
      json[r'move_learn_method'] = null;
    }
    if (this.versionGroup != null) {
      json[r'version_group'] = this.versionGroup;
    } else {
      json[r'version_group'] = null;
    }
    return json;
  }

  /// Returns a new [PokemonMovesInnerVersionGroupDetailsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PokemonMovesInnerVersionGroupDetailsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PokemonMovesInnerVersionGroupDetailsInner[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PokemonMovesInnerVersionGroupDetailsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PokemonMovesInnerVersionGroupDetailsInner(
        levelLearnedAt: mapValueOfType<int>(json, r'level_learned_at'),
        moveLearnMethod: mapValueOfType<Object>(json, r'move_learn_method'),
        versionGroup: mapValueOfType<Object>(json, r'version_group'),
      );
    }
    return null;
  }

  static List<PokemonMovesInnerVersionGroupDetailsInner> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PokemonMovesInnerVersionGroupDetailsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PokemonMovesInnerVersionGroupDetailsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PokemonMovesInnerVersionGroupDetailsInner> mapFromJson(
      dynamic json) {
    final map = <String, PokemonMovesInnerVersionGroupDetailsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            PokemonMovesInnerVersionGroupDetailsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PokemonMovesInnerVersionGroupDetailsInner-objects as value to a dart map
  static Map<String, List<PokemonMovesInnerVersionGroupDetailsInner>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PokemonMovesInnerVersionGroupDetailsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PokemonMovesInnerVersionGroupDetailsInner.listFromJson(
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
