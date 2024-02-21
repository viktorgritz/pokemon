//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Region {
  /// Returns a new [Region] instance.
  Region({
    this.id,
    this.locations,
    this.move,
    this.name,
    this.names,
    this.mainGeneration,
    this.pokedexes,
    this.versionGroup,
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
  int? locations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? move;

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
  String? names;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mainGeneration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pokedexes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? versionGroup;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Region &&
          other.id == id &&
          other.locations == locations &&
          other.move == move &&
          other.name == name &&
          other.names == names &&
          other.mainGeneration == mainGeneration &&
          other.pokedexes == pokedexes &&
          other.versionGroup == versionGroup;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (locations == null ? 0 : locations!.hashCode) +
      (move == null ? 0 : move!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (names == null ? 0 : names!.hashCode) +
      (mainGeneration == null ? 0 : mainGeneration!.hashCode) +
      (pokedexes == null ? 0 : pokedexes!.hashCode) +
      (versionGroup == null ? 0 : versionGroup!.hashCode);

  @override
  String toString() =>
      'Region[id=$id, locations=$locations, move=$move, name=$name, names=$names, mainGeneration=$mainGeneration, pokedexes=$pokedexes, versionGroup=$versionGroup]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.locations != null) {
      json[r'locations'] = this.locations;
    } else {
      json[r'locations'] = null;
    }
    if (this.move != null) {
      json[r'move'] = this.move;
    } else {
      json[r'move'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.names != null) {
      json[r'names'] = this.names;
    } else {
      json[r'names'] = null;
    }
    if (this.mainGeneration != null) {
      json[r'main_generation'] = this.mainGeneration;
    } else {
      json[r'main_generation'] = null;
    }
    if (this.pokedexes != null) {
      json[r'pokedexes'] = this.pokedexes;
    } else {
      json[r'pokedexes'] = null;
    }
    if (this.versionGroup != null) {
      json[r'version_group'] = this.versionGroup;
    } else {
      json[r'version_group'] = null;
    }
    return json;
  }

  /// Returns a new [Region] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Region? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Region[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Region[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Region(
        id: mapValueOfType<int>(json, r'id'),
        locations: mapValueOfType<int>(json, r'locations'),
        move: mapValueOfType<int>(json, r'move'),
        name: mapValueOfType<String>(json, r'name'),
        names: mapValueOfType<String>(json, r'names'),
        mainGeneration: mapValueOfType<String>(json, r'main_generation'),
        pokedexes: mapValueOfType<String>(json, r'pokedexes'),
        versionGroup: mapValueOfType<String>(json, r'version_group'),
      );
    }
    return null;
  }

  static List<Region> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Region>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Region.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Region> mapFromJson(dynamic json) {
    final map = <String, Region>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Region.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Region-objects as value to a dart map
  static Map<String, List<Region>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Region>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Region.listFromJson(
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
