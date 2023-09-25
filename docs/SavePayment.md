# Propertyware::SavePayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. |  |
| **comments** | **String** | Comments. | [optional] |
| **contact_id** | **Integer** | Id of the contact associated with lease payment |  |
| **date** | **Date** | Post Date. |  |
| **deposit_date** | **Date** | Payment deposit date. |  |
| **destination_account_id** | **Integer** | Bank GL account ID to deposit. |  |
| **lease_id** | **Integer** | Id of the lease associated with this payment. |  |
| **payment_type** | **String** | Payment type. |  |
| **ref_no** | **String** | Payment reference number |  |

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

