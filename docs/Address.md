# Propertyware::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Primary street and/or unit address. | [optional] |
| **address_cont** | **String** | Address continuation. | [optional] |
| **city** | **String** | City. | [optional] |
| **country** | **String** | Country. | [optional] |
| **postal_code** | **String** | Postal code. | [optional] |
| **state_region** | **String** | State/region. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Address.new(
  address: null,
  address_cont: null,
  city: null,
  country: null,
  postal_code: null,
  state_region: null
)
```

