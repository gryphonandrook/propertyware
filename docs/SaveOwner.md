# Propertyware::SaveOwner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**SaveAddress**](SaveAddress.md) |  | [optional] |
| **email** | **String** | Owner EMail. | [optional] |
| **first_name** | **String** | Owner First Name. |  |
| **home_phone** | **String** | Owner Home Phone. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_name** | **String** | Owner Last Name. |  |
| **mobile_phone** | **String** | Owner Mobile Phone. | [optional] |
| **other_phone** | **String** | Owner Other Phone. | [optional] |
| **percentage_ownership** | **Float** | Ownership percentage. | [optional] |
| **work_phone** | **String** | Owner Work Phone. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveOwner.new(
  address: null,
  email: null,
  first_name: null,
  home_phone: null,
  id: null,
  last_name: null,
  mobile_phone: null,
  other_phone: null,
  percentage_ownership: null,
  work_phone: null
)
```

