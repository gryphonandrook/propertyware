# Propertyware::CheckSplit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. | [optional] |
| **building_id** | **Integer** | Id of the building associated with this check split. | [optional] |
| **comments** | **String** | Comments. | [optional] |
| **gl_account_id** | **Integer** | Id of the general ledger account associated with this check split. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **portfolio_id** | **Integer** | Id of the portfolio associated with this check split. |  |
| **unit_id** | **Integer** | Id of the unit associated with this check split. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::CheckSplit.new(
  amount: null,
  building_id: null,
  comments: null,
  gl_account_id: null,
  id: null,
  portfolio_id: null,
  unit_id: null
)
```

