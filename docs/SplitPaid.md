# Propertyware::SplitPaid

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. | [optional] |
| **amount_paid** | **Float** | Total amount paid for this line item. | [optional] |
| **amount_paid_by_bill_payment** | **Float** | Amount that was paid in this payment. | [optional] |
| **building_id** | **Integer** | Id of the building associated with this line item. | [optional] |
| **comments** | **String** | Comments. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **paid** | **Boolean** | Indicates if this line item is paid. | [optional] |
| **portfolio_id** | **Integer** | Id of the portfolio associated with this line item. | [optional] |
| **unit_id** | **Integer** | Id of the unit associated with this line item. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SplitPaid.new(
  amount: null,
  amount_paid: null,
  amount_paid_by_bill_payment: null,
  building_id: null,
  comments: null,
  id: null,
  paid: false,
  portfolio_id: null,
  unit_id: null
)
```

