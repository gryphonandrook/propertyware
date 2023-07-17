# Propertyware::LateFeeRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **due_day** | **Integer** | Fee due day. | [optional] |
| **fee_type** | **String** | Late fee type. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **minimum_due** | **Float** | Minimum amount due to trigger the late fee process. | [optional] |
| **summary** | **String** | Textual description of the late fee calculation. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::LateFeeRule.new(
  due_day: null,
  fee_type: null,
  id: null,
  minimum_due: null,
  summary: null
)
```

