# Propertyware::SaveAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Primary street and/or unit address. Required only if country is USA or Canada. | [optional] |
| **address_cont** | **String** | Address continuation. | [optional] |
| **city** | **String** | City. Required only if Country is United States / Canada. | [optional] |
| **country** | **String** | Country. For US addresses, this value should be \&quot;United States\&quot;. For other countries, this should be the full country name (Canada, United Kingdom, ...) |  |
| **postal_code** | **String** | Zip. Required only if Country is United States / Canada. | [optional] |
| **state_region** | **String** | State. Required only if Country is United States / Canada. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveAddress.new(
  address: null,
  address_cont: null,
  city: null,
  country: null,
  postal_code: null,
  state_region: null
)
```

