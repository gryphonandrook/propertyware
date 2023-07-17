# Propertyware::RESTAPIBulkErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | [**Array&lt;RESTAPIError&gt;**](RESTAPIError.md) |  | [optional] |
| **index** | **Integer** |  | [optional] |
| **success** | **Boolean** |  | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::RESTAPIBulkErrorResponse.new(
  error: null,
  index: null,
  success: null
)
```

