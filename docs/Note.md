# Propertyware::Note

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** | Content of the note. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **date** | **Date** | Date the note was created. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **private** | **Boolean** |  | [optional] |
| **subject** | **String** | Subject. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Note.new(
  body: null,
  created_by: null,
  created_date_time: null,
  date: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  private: null,
  subject: null
)
```

