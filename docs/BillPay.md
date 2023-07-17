# Propertyware::BillPay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_splits** | [**Array&lt;SplitPay&gt;**](SplitPay.md) | Bill splits list. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::BillPay.new(
  bill_splits: null,
  id: null
)
```

