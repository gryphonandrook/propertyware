# Propertyware::SaveCharge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. |  |
| **comments** | **String** | Comments. | [optional] |
| **date** | **Date** | Post Date. |  |
| **gl_account_id** | **Integer** | GL Account ID. |  |
| **lease_id** | **Integer** | Lease ID. |  |
| **ref_no** | **String** | Charge reference No. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveCharge.new(
  amount: null,
  comments: null,
  date: null,
  gl_account_id: null,
  lease_id: null,
  ref_no: null
)
```

