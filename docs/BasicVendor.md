# Propertyware::BasicVendor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Address. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **custom_fields** | [**Array&lt;CustomField&gt;**](CustomField.md) | Custom fields. | [optional] |
| **email** | **String** | Email address. | [optional] |
| **fax** | **String** | Fax number. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **name** | **String** | Name. | [optional] |
| **other_phone** | **String** | Other phone number. | [optional] |
| **phone** | **String** | Phone number. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::BasicVendor.new(
  address: null,
  created_by: null,
  created_date_time: null,
  custom_fields: null,
  email: null,
  fax: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  name: null,
  other_phone: null,
  phone: null
)
```

