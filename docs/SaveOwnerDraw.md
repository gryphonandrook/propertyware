# Propertyware::SaveOwnerDraw

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. |  |
| **comments** | **String** | Comments. | [optional] |
| **contact_id** | **Integer** | Owner Contact ID. |  |
| **date** | **Date** | Post Date. |  |
| **destination_account_id** | **Integer** | Bank Account ID to Pay From. |  |
| **gl_account_id** | **Integer** | GL Account id. |  |
| **portfolio_id** | **Integer** | Portfolio ID. |  |
| **ref_no** | **String** | Check no required when payment method is Hand written check . | [optional] |
| **to_be_printed** | **Boolean** | Indicates if Check is to be printed. |  |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveOwnerDraw.new(
  amount: null,
  comments: null,
  contact_id: null,
  date: null,
  destination_account_id: null,
  gl_account_id: null,
  portfolio_id: null,
  ref_no: null,
  to_be_printed: false
)
```

