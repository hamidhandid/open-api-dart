import 'util.dart';
import 'types.dart';
import 'schema.dart';
import 'json_object.dart';

/// Represents a header in the OpenAPI specification.
class APIHeader extends APIObject {
  APIHeader();

  void decode(JSONObject json) {
    description = json.decode("description");
    type = APITypeCodec.decode(json.decode("type"));
    format = json.decode("format");
    items = json.decode("items", inflate: () => new APISchemaObject());
  }

  String description;
  APIType type;
  String format;
  APISchemaObject items;

  void encode(JSONObject json) {
    json.encode("descriptiopn", description);
    json.encode("type", APITypeCodec.encode(type));
    json.encode("format", format);
    json.encodeObject("items", items);
  }
}