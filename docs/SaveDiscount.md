# Propertyware::SaveDiscount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount, should be negative. |  |
| **comments** | **String** | Comments. | [optional] |
| **date** | **Date** | Date. |  |
| **discount_account_id** | **Integer** | Discount GL Account ID. |  |
| **lease_id** | **Integer** | Id of the lease associated with this discount. |  |
| **ref_no** | **String** | Ref No. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveDiscount.new(
  amount: null,
  comments: null,
  date: null,
  discount_account_id: null,
  lease_id: null,
  ref_no: null
)
```

