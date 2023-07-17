# Propertyware::InspectionArea

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier. | [optional] |
| **items** | [**Array&lt;InspectionItem&gt;**](InspectionItem.md) | List of items in the inspection. | [optional] |
| **name** | **String** | Name of the inspection area. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::InspectionArea.new(
  id: null,
  items: null,
  name: null
)
```

