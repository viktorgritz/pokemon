# pokemon_api.api.DefaultApi

## Load the API package
```dart
import 'package:pokemon_api/api.dart';
```

All URIs are relative to *https://pokeapi.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2AbilityIdGet**](DefaultApi.md#apiv2abilityidget) | **GET** /api/v2/ability/{id}/ | Finds Pokemon ability by Id
[**apiV2MachineIdGet**](DefaultApi.md#apiv2machineidget) | **GET** /api/v2/machine/{id} | Finds Machine by Id
[**apiV2PokemonIdGet**](DefaultApi.md#apiv2pokemonidget) | **GET** /api/v2/pokemon/{id} | Finds pokemon by Id
[**apiV2PokemonNameGet**](DefaultApi.md#apiv2pokemonnameget) | **GET** /api/v2/pokemon/{name}/ | Finds Pokemon by Name
[**apiV2RegionIdGet**](DefaultApi.md#apiv2regionidget) | **GET** /api/v2/region/{id} | Finds Pokemon region by id


# **apiV2AbilityIdGet**
> apiV2AbilityIdGet(id)

Finds Pokemon ability by Id

Enter id to find Pokemon ability

### Example
```dart
import 'package:pokemon_api/api.dart';

final api_instance = DefaultApi();
final id = 789; // int | ID of region to return

try {
    api_instance.apiV2AbilityIdGet(id);
} catch (e) {
    print('Exception when calling DefaultApi->apiV2AbilityIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of region to return | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2MachineIdGet**
> apiV2MachineIdGet(id)

Finds Machine by Id

Enter id to find Pokemon Machine

### Example
```dart
import 'package:pokemon_api/api.dart';

final api_instance = DefaultApi();
final id = 789; // int | ID of region to return

try {
    api_instance.apiV2MachineIdGet(id);
} catch (e) {
    print('Exception when calling DefaultApi->apiV2MachineIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of region to return | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2PokemonIdGet**
> apiV2PokemonIdGet(id)

Finds pokemon by Id

Enter id to find Pokemon

### Example
```dart
import 'package:pokemon_api/api.dart';

final api_instance = DefaultApi();
final id = 789; // int | ID of region to return

try {
    api_instance.apiV2PokemonIdGet(id);
} catch (e) {
    print('Exception when calling DefaultApi->apiV2PokemonIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of region to return | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2PokemonNameGet**
> apiV2PokemonNameGet(name)

Finds Pokemon by Name

Enter name to find Pokemon Info

### Example
```dart
import 'package:pokemon_api/api.dart';

final api_instance = DefaultApi();
final name = name_example; // String | The name that needs to pokemon info.

try {
    api_instance.apiV2PokemonNameGet(name);
} catch (e) {
    print('Exception when calling DefaultApi->apiV2PokemonNameGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name that needs to pokemon info. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2RegionIdGet**
> apiV2RegionIdGet(id)

Finds Pokemon region by id

Enter id to find Pokemon region

### Example
```dart
import 'package:pokemon_api/api.dart';

final api_instance = DefaultApi();
final id = 789; // int | ID of region to return

try {
    api_instance.apiV2RegionIdGet(id);
} catch (e) {
    print('Exception when calling DefaultApi->apiV2RegionIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of region to return | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

