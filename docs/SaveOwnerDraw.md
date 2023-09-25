# Propertyware::SaveOwnerDraw

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. |  |
| **comments** | **String** | Comments. | [optional] |
| **contact_id** | **Integer** | Id of the contact associated with this owner draw. |  |
| **date** | **Date** | Post Date. |  |
| **destination_account_id** | **Integer** | Id of the bank account where the payment will be made from. |  |
| **gl_account_id** | **Integer** | Id of the general ledger account associated with this owner draw. |  |
| **portfolio_id** | **Integer** | Id of the portfolio associated with this owner draw. |  |
| **ref_no** | **String** | Check no required when payment method is Hand written check (i.e toBePrinted &#x3D; false). | [optional] |
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

