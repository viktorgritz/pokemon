//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DefaultApi {
  DefaultApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Finds Pokemon ability by Id
  ///
  /// Enter id to find Pokemon ability
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of region to return
  Future<Response> apiV2AbilityIdGetWithHttpInfo(
    int id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v2/ability/{id}/'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Finds Pokemon ability by Id
  ///
  /// Enter id to find Pokemon ability
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of region to return
  Future<void> apiV2AbilityIdGet(
    int id,
  ) async {
    final response = await apiV2AbilityIdGetWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Finds Machine by Id
  ///
  /// Enter id to find Pokemon Machine
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of region to return
  Future<Response> apiV2MachineIdGetWithHttpInfo(
    int id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v2/machine/{id}'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Finds Machine by Id
  ///
  /// Enter id to find Pokemon Machine
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of region to return
  Future<void> apiV2MachineIdGet(
    int id,
  ) async {
    final response = await apiV2MachineIdGetWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Finds pokemon by Id
  ///
  /// Enter id to find Pokemon
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of region to return
  Future<Response> apiV2PokemonIdGetWithHttpInfo(
    int id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v2/pokemon/{id}'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Finds pokemon by Id
  ///
  /// Enter id to find Pokemon
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of region to return
  Future<void> apiV2PokemonIdGet(
    int id,
  ) async {
    final response = await apiV2PokemonIdGetWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Finds Pokemon by Name
  ///
  /// Enter name to find Pokemon Info
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name that needs to pokemon info.
  Future<Response> apiV2PokemonNameGetWithHttpInfo(
    String name,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v2/pokemon/{name}/'.replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Finds Pokemon by Name
  ///
  /// Enter name to find Pokemon Info
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name that needs to pokemon info.
  Future<void> apiV2PokemonNameGet(
    String name,
  ) async {
    final response = await apiV2PokemonNameGetWithHttpInfo(
      name,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Finds Pokemon region by id
  ///
  /// Enter id to find Pokemon region
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of region to return
  Future<Response> apiV2RegionIdGetWithHttpInfo(
    int id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v2/region/{id}'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Finds Pokemon region by id
  ///
  /// Enter id to find Pokemon region
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of region to return
  Future<void> apiV2RegionIdGet(
    int id,
  ) async {
    final response = await apiV2RegionIdGetWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
