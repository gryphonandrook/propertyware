# Propertyware::SaveRefund

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. |  |
| **comments** | **String** | Comments. | [optional] |
| **date** | **Date** | Post Date. |  |
| **destination_account_id** | **Integer** | Id of the bank account to send the refund from. |  |
| **gl_account_id** | **Integer** | Id of the general ledger account associated with the refund. |  |
| **lease_id** | **Integer** | Id of the lease associated with the refund. |  |
| **ref_no** | **String** | Reference number. | [optional] |
| **to_be_printed** | **Boolean** | Indicates if the check is to be printed. | [optional] |
| **to_primary_tenant** | **Boolean** | Indicates if refund is for primary contact only | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveRefund.new(
  amount: null,
  comments: null,
  date: null,
  destination_account_id: null,
  gl_account_id: null,
  lease_id: null,
  ref_no: null,
  to_be_printed: false,
  to_primary_tenant: false
)
```

