# Propertyware::AutoPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **String** | Payment general ledger account. | [optional] |
| **amount** | **Float** | Payment amount. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **description** | **String** | Description. | [optional] |
| **end_date** | **Date** | End date. | [optional] |
| **fee_amount** | **Float** | Fee amount. | [optional] |
| **frequency** | **String** | Payment frequency. | [optional] |
| **gl_account_id** | **Integer** | Payment general ledger account ID. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **last_post_date** | **Date** | Last post date. | [optional] |
| **start_date** | **Date** | Start date. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::AutoPayment.new(
  account: null,
  amount: null,
  created_by: null,
  created_date_time: null,
  description: null,
  end_date: null,
  fee_amount: null,
  frequency: null,
  gl_account_id: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  last_post_date: null,
  start_date: null
)
```

