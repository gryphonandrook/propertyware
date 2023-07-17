# Propertyware::SaveAdjustment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount, should be negative. |  |
| **comments** | **String** | Comments. | [optional] |
| **date** | **Date** | Lease Adjustment date. | [optional] |
| **lease_id** | **Integer** | Lease id. |  |
| **ref_no** | **String** | Ref No. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveAdjustment.new(
  amount: null,
  comments: null,
  date: null,
  lease_id: null,
  ref_no: null
)
```

