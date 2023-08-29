# Propertyware::UpdateDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the document. | [optional] |
| **file_name** | **String** | Name of the document. |  |
| **publish_to_owner_portal** | **Boolean** | Indicates if the document is published to the owner portal. | [optional] |
| **publish_to_tenant_portal** | **Boolean** | Indicates if the document is published to the tenant portal. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::UpdateDocument.new(
  description: null,
  file_name: null,
  publish_to_owner_portal: false,
  publish_to_tenant_portal: false
)
```

