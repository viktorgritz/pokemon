//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PokemonStatsInner {
  /// Returns a new [PokemonStatsInner] instance.
  PokemonStatsInner({
    this.baseStat,
    this.effort,
    this.stat,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? baseStat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? effort;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? stat;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonStatsInner &&
          other.baseStat == baseStat &&
          other.effort == effort &&
          other.stat == stat;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (baseStat == null ? 0 : baseStat!.hashCode) +
      (effort == null ? 0 : effort!.hashCode) +
      (stat == null ? 0 : stat!.hashCode);

  @override
  String toString() =>
      'PokemonStatsInner[baseStat=$baseStat, effort=$effort, stat=$stat]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.baseStat != null) {
      json[r'base_stat'] = this.baseStat;
    } else {
      json[r'base_stat'] = null;
    }
    if (this.effort != null) {
      json[r'effort'] = this.effort;
    } else {
      json[r'effort'] = null;
    }
    if (this.stat != null) {
      json[r'stat'] = this.stat;
    } else {
      json[r'stat'] = null;
    }
    return json;
  }

  /// Returns a new [PokemonStatsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PokemonStatsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PokemonStatsInner[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PokemonStatsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PokemonStatsInner(
        baseStat: mapValueOfType<int>(json, r'base_stat'),
        effort: mapValueOfType<int>(json, r'effort'),
        stat: mapValueOfType<Object>(json, r'stat'),
      );
    }
    return null;
  }

  static List<PokemonStatsInner> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PokemonStatsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PokemonStatsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PokemonStatsInner> mapFromJson(dynamic json) {
    final map = <String, PokemonStatsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PokemonStatsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PokemonStatsInner-objects as value to a dart map
  static Map<String, List<PokemonStatsInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PokemonStatsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PokemonStatsInner.listFromJson(
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
