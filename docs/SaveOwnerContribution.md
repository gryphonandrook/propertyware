# Propertyware::SaveOwnerContribution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. |  |
| **comments** | **String** | Comments. | [optional] |
| **contact_id** | **Integer** | Owner Contact ID. |  |
| **date** | **Date** | Post Date. |  |
| **destination_account_id** | **Integer** | Bank Account ID to Deposit. |  |
| **gl_account_id** | **Integer** | GL Account ID. |  |
| **payment_type** | **String** | Payment Type. |  |
| **portfolio_id** | **Integer** | Portfolio id to apply payment. |  |
| **ref_no** | **String** | Charge Ref No. |  |

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

