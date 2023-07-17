# Propertyware::SaveCheckSplit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Check Split amount. | [optional] |
| **building_id** | **Integer** | Check Location Building ID. | [optional] |
| **comments** | **String** | CheckSplit Comments. | [optional] |
| **gl_account_id** | **Integer** | Split GL Account ID. |  |
| **id** | **Integer** | Unique identifier. | [optional] |
| **portfolio_id** | **Integer** | Portfolio id to apply payment. |  |
| **unit_id** | **Integer** | Check Location Unit ID. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveCheckSplit.new(
  amount: null,
  building_id: null,
  comments: null,
  gl_account_id: null,
  id: null,
  portfolio_id: null,
  unit_id: null
)
```

