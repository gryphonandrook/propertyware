# Propertyware::Note

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** | Content of the note. | [optional] |
| **date** | **Date** | Date the note was created. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **private** | **Boolean** |  | [optional] |
| **subject** | **String** | Subject. | [optional] |
| **type** | **String** | Note type. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Note.new(
  body: null,
  date: null,
  id: null,
  private: null,
  subject: null,
  type: null
)
```

