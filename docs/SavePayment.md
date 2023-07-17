# Propertyware::SavePayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. |  |
| **comments** | **String** | Comments. | [optional] |
| **contact_id** | **Integer** | Payer contact ID. |  |
| **date** | **Date** | Post Date. |  |
| **deposit_date** | **Date** | Payment Deposit Date. |  |
| **destination_account_id** | **Integer** | Bank Account ID to Deposit. |  |
| **lease_id** | **Integer** | Lease ID to apply payment. |  |
| **payment_type** | **String** | Payment Type. |  |
| **ref_no** | **String** | Payment Ref No. |  |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SavePayment.new(
  amount: null,
  comments: null,
  contact_id: null,
  date: null,
  deposit_date: null,
  destination_account_id: null,
  lease_id: null,
  payment_type: null,
  ref_no: null
)
```

