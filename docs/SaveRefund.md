# Propertyware::SaveRefund

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. |  |
| **comments** | **String** | Comments. | [optional] |
| **date** | **Date** | Post Date. |  |
| **destination_account_id** | **Integer** | Bank GL Account to pay from. |  |
| **gl_account_id** | **Integer** | Refund GL Account. |  |
| **lease_id** | **Integer** | Lease id to apply payment. |  |
| **ref_no** | **String** | Payment Ref No. | [optional] |
| **to_be_printed** | **Boolean** | Bank GL Account to pay from. |  |
| **to_primary_tenant** | **Boolean** | Bank GL Account to pay from. |  |

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

