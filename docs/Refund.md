# Propertyware::Refund

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. |  |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **date** | **Date** | Post date. |  |
| **destination_account_id** | **Integer** | Id of the bank account to send the refund to. |  |
| **gl_account_id** | **Integer** | Id of the general ledger associated with the refund. |  |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **lease_id** | **Integer** | Id of the lease associated with the refund. |  |
| **payee_payer** | **String** | Name of the payee. |  |
| **portfolio_id** | **Integer** | Id of the portfolio associated with the refund. | [optional] |
| **ref_no** | **String** | Reference number. | [optional] |
| **to_be_printed** | **Boolean** | Indicates if the check is to be printed. |  |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Refund.new(
  amount: null,
  created_by: null,
  created_date_time: null,
  date: null,
  destination_account_id: null,
  gl_account_id: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  lease_id: null,
  payee_payer: null,
  portfolio_id: null,
  ref_no: null,
  to_be_printed: false
)
```

