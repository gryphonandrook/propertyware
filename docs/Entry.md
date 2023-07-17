# Propertyware::Entry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **building_id** | **Integer** | Id of the building associated with this entry. | [optional] |
| **comment** | **String** | Transaction comment. | [optional] |
| **credit** | **Float** | Credit amount. | [optional] |
| **debit** | **Float** | Debit amount. | [optional] |
| **glaccount_code** | **String** |  | [optional] |
| **glaccount_id** | **Integer** |  | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **portfolio_id** | **Integer** | Id of the portfolio associated with this entry. | [optional] |
| **unit_id** | **Integer** | Id of the unit associated with this entry. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Entry.new(
  building_id: null,
  comment: null,
  credit: null,
  debit: null,
  glaccount_code: null,
  glaccount_id: null,
  id: null,
  portfolio_id: null,
  unit_id: null
)
```

