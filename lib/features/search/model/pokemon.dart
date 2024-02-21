// Openapi Generator last run: : 2024-02-21T21:38:14.728256
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  additionalProperties:
      DioProperties(pubName: 'pokemon_api', pubAuthor: 'vgritz'),
  inputSpec: InputSpec(path: 'api/api.yaml'),
  typeMappings: {'Pokemon': 'ExamplePokemon'},
  generatorName: Generator.dart,
  runSourceGenOnOutput: true,
  outputDirectory: 'api/pokemon_api',
)
class Example {}