# Propertyware::BillSplit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. | [optional] |
| **amount_paid** | **Float** | Amount paid. | [optional] |
| **building_abbr** | **String** | Abbreviation of the building associated with this bill split. | [optional] |
| **building_id** | **Integer** | Id of the building associated with this bill split. | [optional] |
| **comments** | **String** | Comments regarding the bill split. | [optional] |
| **gl_account_id** | **Integer** | Id of the general ledger account associated with this bill split. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **markup_discount_split** | **Boolean** | Indicates if the bill split is tied to a markup discount. | [optional] |
| **paid** | **Boolean** | Indicates if the bill split has been paid. | [optional] |
| **portfolio_abbr** | **String** | Abbreviation of the portfolio associated with this bill split. | [optional] |
| **portfolio_id** | **Integer** | Id of the portfolio associated with this bill split. | [optional] |
| **unit_abbr** | **String** | Abbreviation of the unit associated with this bill split. | [optional] |
| **unit_id** | **Integer** | Id of the unit associated with this bill split. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::BillSplit.new(
  amount: null,
  amount_paid: null,
  building_abbr: null,
  building_id: null,
  comments: null,
  gl_account_id: null,
  id: null,
  markup_discount_split: false,
  paid: false,
  portfolio_abbr: null,
  portfolio_id: null,
  unit_abbr: null,
  unit_id: null
)
```

