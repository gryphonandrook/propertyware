# Propertyware::Discount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. |  |
| **comments** | **String** | Comments. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **date** | **Date** | Post date. |  |
| **gl_account_id** | **Integer** | Id of the general ledger account associated with this discount. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **lease_id** | **Integer** | Id of the lease associated with this discount. | [optional] |
| **portfolio_id** | **Integer** | Id of the portfolio associated with this transaction. | [optional] |
| **ref_no** | **String** | Reference number. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Discount.new(
  amount: null,
  comments: null,
  created_by: null,
  created_date_time: null,
  date: null,
  gl_account_id: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  lease_id: null,
  portfolio_id: null,
  ref_no: null
)
```

