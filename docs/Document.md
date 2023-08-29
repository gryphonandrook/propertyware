# Propertyware::Document

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **description** | **String** | Description of a document. | [optional] |
| **entity_id** | **Integer** | Unique identifier of an entity document is attached to. | [optional] |
| **entity_type** | **String** | Type of an entity document is attached to. | [optional] |
| **file_name** | **String** | File name. | [optional] |
| **file_type** | **String** | File type. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **publish_to_owner_portal** | **Boolean** | Indicates if the document is published to the owner portal. | [optional] |
| **publish_to_tenant_portal** | **Boolean** | Indicates if the document is published to the tenant portal. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Document.new(
  created_by: null,
  created_date_time: null,
  description: null,
  entity_id: null,
  entity_type: null,
  file_name: null,
  file_type: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  publish_to_owner_portal: false,
  publish_to_tenant_portal: false
)
```

