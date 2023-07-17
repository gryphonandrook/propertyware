# Propertyware::SaveProspectContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**SaveAddress**](SaveAddress.md) |  | [optional] |
| **email** | **String** |  EMail. | [optional] |
| **first_name** | **String** | First Name. |  |
| **home_phone** | **String** |  Home Phone. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_name** | **String** |  Last Name. |  |
| **mobile_phone** | **String** |  Mobile Phone. | [optional] |
| **other_phone** | **String** |  Other Phone. | [optional] |
| **percentageship** | **Float** | ship percentage. | [optional] |
| **work_phone** | **String** |  Work Phone. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveProspectContact.new(
  address: null,
  email: null,
  first_name: null,
  home_phone: null,
  id: null,
  last_name: null,
  mobile_phone: null,
  other_phone: null,
  percentageship: null,
  work_phone: null
)
```

