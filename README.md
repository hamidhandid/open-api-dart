# open_api_dart_fork

Forked from https://pub.dev/packages/open_api

Fixes
* https://github.com/stablekernel/open-api-dart/pull/6

Reads and writes OpenAPI (Swagger) specifications.

Example
---

```dart
final file = new File("test/specs/kubernetes.json");
final contents = await file.readAsString();
final doc = new APIDocument.fromJSON(contents);

final output = JSON.encode(doc.asMap());
```

