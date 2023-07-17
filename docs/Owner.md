# Propertyware::Owner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**Address**](Address.md) |  | [optional] |
| **email** | **String** | Email address. | [optional] |
| **first_name** | **String** | First name. | [optional] |
| **home_phone** | **String** | Home phone. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_name** | **String** | Last name. | [optional] |
| **mobile_phone** | **String** | Mobile phone. | [optional] |
| **name** | **String** | Full name. | [optional] |
| **other_phone** | **String** | Other phone. | [optional] |
| **percentage_ownership** | **Float** | Percentage ownership. | [optional] |
| **work_phone** | **String** | Work phone. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Owner.new(
  address: null,
  email: null,
  first_name: null,
  home_phone: null,
  id: null,
  last_name: null,
  mobile_phone: null,
  name: null,
  other_phone: null,
  percentage_ownership: null,
  work_phone: null
)
```

