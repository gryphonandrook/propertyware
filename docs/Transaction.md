# Propertyware::Transaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Transaction amount. | [optional] |
| **comments** | **String** | Comments. | [optional] |
| **contact_id** | **Integer** | Id of the contact associated with this transaction. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **date** | **Date** | Transaction date. | [optional] |
| **deposit_date** | **Date** | Transaction deposit date. | [optional] |
| **destination_account_id** | **Integer** | Id of the bank account associated with this transaction. | [optional] |
| **gl_account_id** | **Integer** | Id of the general ledger account associated with this transaction. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **lease_id** | **Integer** | Id of the lease associated with this transaction. | [optional] |
| **payee_payer** | **String** | Name of the payee or payer. | [optional] |
| **payment_method** | **String** | Payment method. | [optional] |
| **payment_type** | **String** | Payment type. | [optional] |
| **portfolio_id** | **Integer** | Id of the portfolio associated with this transaction. | [optional] |
| **ref_no** | **String** | Transaction reference number. | [optional] |
| **to_be_printed** | **Boolean** | Indicates if a check should be printed for this transaction. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Transaction.new(
  amount: null,
  comments: null,
  contact_id: null,
  created_by: null,
  created_date_time: null,
  date: null,
  deposit_date: null,
  destination_account_id: null,
  gl_account_id: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  lease_id: null,
  payee_payer: null,
  payment_method: null,
  payment_type: null,
  portfolio_id: null,
  ref_no: null,
  to_be_printed: false
)
```

