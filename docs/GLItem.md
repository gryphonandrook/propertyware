# Propertyware::GLItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | Comments. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **glentries** | [**Array&lt;Entry&gt;**](Entry.md) |  | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **lease_id** | **Integer** | Id of the lease associated with this transaction. | [optional] |
| **owner_id** | **Integer** | Id of the owner associated with this transaction. | [optional] |
| **transaction_type** | **String** | Transaction type. | [optional] |
| **tx_date** | **Date** | Transaction date. | [optional] |
| **vendor_id** | **Integer** | Id of the vendor associated with this transaction. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::GLItem.new(
  comment: null,
  created_by: null,
  created_date_time: null,
  glentries: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  lease_id: null,
  owner_id: null,
  transaction_type: null,
  tx_date: null,
  vendor_id: null
)
```

