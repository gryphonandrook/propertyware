# Propertyware::SaveBillPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bills** | [**Array&lt;BillPay&gt;**](BillPay.md) | Bills to pay. | [optional] |
| **check_number** | **String** | Payment check number. | [optional] |
| **memo** | **String** | Memo. | [optional] |
| **payment_account_id** | **Integer** | Bank Account to pay from. | [optional] |
| **payment_date** | **Date** | Payment Date. | [optional] |
| **payment_method** | **String** | Payment method. | [optional] |
| **vendor_id** | **Integer** | Vendor ID to Pay. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveBillPayment.new(
  bills: null,
  check_number: null,
  memo: null,
  payment_account_id: null,
  payment_date: null,
  payment_method: null,
  vendor_id: null
)
```

