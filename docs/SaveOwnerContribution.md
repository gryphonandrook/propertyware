# Propertyware::SaveOwnerContribution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. |  |
| **comments** | **String** | Comments. | [optional] |
| **contact_id** | **Integer** | Id of the contact associated with this owner contribution. |  |
| **date** | **Date** | Post Date. |  |
| **destination_account_id** | **Integer** | Id of the bank account where the payment will be deposited. |  |
| **gl_account_id** | **Integer** | Id of the general ledger account associated with this owner contribution. |  |
| **payment_type** | **String** | Payment Type. |  |
| **portfolio_id** | **Integer** | Id of the portfolio to apply the payment to. |  |
| **ref_no** | **String** | Reference No. |  |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveOwnerContribution.new(
  amount: null,
  comments: null,
  contact_id: null,
  date: null,
  destination_account_id: null,
  gl_account_id: null,
  payment_type: null,
  portfolio_id: null,
  ref_no: null
)
```

