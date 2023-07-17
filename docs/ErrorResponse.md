# Propertyware::ErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** |  | [optional] |
| **errors** | [**Array&lt;RESTAPIError&gt;**](RESTAPIError.md) |  | [optional] |
| **user_message** | **String** |  | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::ErrorResponse.new(
  error_code: null,
  errors: null,
  user_message: null
)
```

