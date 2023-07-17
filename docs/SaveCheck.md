# Propertyware::SaveCheck

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_date** | **Date** | Check Date. |  |
| **check_splits** | [**Array&lt;SaveCheckSplit&gt;**](SaveCheckSplit.md) | Check Split list. | [optional] |
| **comments** | **String** | Comments. | [optional] |
| **destination_account_id** | **Integer** | Destination AccountID. |  |
| **ref_no** | **String** | Check Ref No. | [optional] |
| **to_be_printed** | **Boolean** | Indicates if Check is to be printed. | [optional] |
| **vendor_id** | **Integer** | Check related vendorID. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveCheck.new(
  check_date: null,
  check_splits: null,
  comments: null,
  destination_account_id: null,
  ref_no: null,
  to_be_printed: false,
  vendor_id: null
)
```

