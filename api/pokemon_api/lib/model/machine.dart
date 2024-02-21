//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Machine {
  /// Returns a new [Machine] instance.
  Machine({
    this.id,
    this.item,
    this.move,
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
  int? item;

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
  String? versionGroup;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Machine &&
          other.id == id &&
          other.item == item &&
          other.move == move &&
          other.versionGroup == versionGroup;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (item == null ? 0 : item!.hashCode) +
      (move == null ? 0 : move!.hashCode) +
      (versionGroup == null ? 0 : versionGroup!.hashCode);

  @override
  String toString() =>
      'Machine[id=$id, item=$item, move=$move, versionGroup=$versionGroup]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.item != null) {
      json[r'item'] = this.item;
    } else {
      json[r'item'] = null;
    }
    if (this.move != null) {
      json[r'move'] = this.move;
    } else {
      json[r'move'] = null;
    }
    if (this.versionGroup != null) {
      json[r'version_group'] = this.versionGroup;
    } else {
      json[r'version_group'] = null;
    }
    return json;
  }

  /// Returns a new [Machine] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Machine? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Machine[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Machine[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Machine(
        id: mapValueOfType<int>(json, r'id'),
        item: mapValueOfType<int>(json, r'item'),
        move: mapValueOfType<int>(json, r'move'),
        versionGroup: mapValueOfType<String>(json, r'version_group'),
      );
    }
    return null;
  }

  static List<Machine> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Machine>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Machine.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Machine> mapFromJson(dynamic json) {
    final map = <String, Machine>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Machine.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Machine-objects as value to a dart map
  static Map<String, List<Machine>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Machine>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Machine.listFromJson(
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
