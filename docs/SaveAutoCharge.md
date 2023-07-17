# Propertyware::SaveAutoCharge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Auto charge amount. |  |
| **due_day** | **Integer** | Charge due day. |  |
| **end_date** | **Date** | Auto charge end date. | [optional] |
| **frequency** | **String** | Charge frequency. |  |
| **gl_account_id** | **Integer** | GL Account ID. |  |
| **start_date** | **Date** | Auto charge start date. |  |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveAutoCharge.new(
  amount: null,
  due_day: null,
  end_date: null,
  frequency: null,
  gl_account_id: null,
  start_date: null
)
```

