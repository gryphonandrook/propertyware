# Propertyware::Charge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **String** | General ledger account. | [optional] |
| **amount** | **Float** | Amount. | [optional] |
| **description** | **String** | Description of the auto charge. | [optional] |
| **due_day** | **String** | Description of the day when the auto charge is due. | [optional] |
| **end_date** | **Date** | End date of auto charge. | [optional] |
| **frequency** | **String** | Frequency of the auto charge. |  |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_post_date** | **Date** | Last post date. | [optional] |
| **reference_number** | **String** | Reference number. | [optional] |
| **start_date** | **Date** | Start date. |  |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Charge.new(
  account: null,
  amount: null,
  description: null,
  due_day: null,
  end_date: null,
  frequency: null,
  id: null,
  last_post_date: null,
  reference_number: null,
  start_date: null
)
```

