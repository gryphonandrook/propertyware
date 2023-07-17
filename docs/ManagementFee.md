# Propertyware::ManagementFee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_code** | **String** | Management fee account code. | [optional] |
| **account_number** | **String** | Management fee account number. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **manager** | **String** | Property manager name. | [optional] |
| **managers_commission_percentage** | **Float** | Property manager commission percentage. | [optional] |
| **pass_through** | **Boolean** | Indicates if the commission account is of the passthrough type. | [optional] |
| **percentage** | **Float** | Management fee percentage. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::ManagementFee.new(
  account_code: null,
  account_number: null,
  id: null,
  manager: null,
  managers_commission_percentage: null,
  pass_through: false,
  percentage: null
)
```

