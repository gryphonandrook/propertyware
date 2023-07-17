# Propertyware::CampaignSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_tracking_group_id** | **String** | Call tracking group id. | [optional] |
| **default** | **Boolean** |  | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **name** | **String** | Name of the campaign source. | [optional] |
| **referrer_domain** | **String** | Referrer domain. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::CampaignSource.new(
  call_tracking_group_id: null,
  default: null,
  id: null,
  name: null,
  referrer_domain: null
)
```

