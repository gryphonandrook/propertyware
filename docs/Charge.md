# Propertyware::Charge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **String** | General ledger account. | [optional] |
| **amount** | **Float** | Auto charge amount. | [optional] |
| **description** | **String** | Description of the auto charge. | [optional] |
| **due_day** | **String** | Description of the day when the auto charge is due. | [optional] |
| **end_date** | **Date** | End date of auto charge. | [optional] |
| **frequency** | **String** | Frequency of the auto charge. |  |
| **gl_account_id** | **Integer** | ID of the General Ledger Account associated to this auto charge. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_post_date** | **Date** | Last post date. | [optional] |
| **reference_number** | **String** | Reference number. | [optional] |
| **start_date** | **Date** | Start date of auto charge. |  |

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
  gl_account_id: null,
  id: null,
  last_post_date: null,
  reference_number: null,
  start_date: null
)
```

