# Propertyware::BillPaid

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_date** | **Date** | Bill date. | [optional] |
| **bill_number** | **Integer** | Bill number. | [optional] |
| **bill_splits** | [**Array&lt;SplitPaid&gt;**](SplitPaid.md) | List of bill splits. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::BillPaid.new(
  bill_date: null,
  bill_number: null,
  bill_splits: null,
  id: null
)
```

