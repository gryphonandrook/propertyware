# Propertyware::ProspectStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier. | [optional] |
| **readonly** | **Boolean** | Read Only | [optional] |
| **status** | **String** | Status | [optional] |
| **visible_on_portal** | **Boolean** | Status visible On Portal | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::ProspectStatus.new(
  id: null,
  readonly: false,
  status: null,
  visible_on_portal: false
)
```

