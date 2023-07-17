# Propertyware::ChargeTx

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount. |  |
| **amount_due** | **Float** | The amount due for the charge. | [optional] |
| **amount_paid** | **Float** | The amount paid for the charge. | [optional] |
| **charge_status** | **String** | Status of the charge. | [optional] |
| **comments** | **String** | Comments. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **date** | **Date** | Post date. |  |
| **gl_account_id** | **Integer** | Id of the general ledger account associated with this charge. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **lease_id** | **Integer** | Id of the lease associated with this charge. | [optional] |
| **parent_tx_id** | **Integer** | Parent Charge ID. If parent charge date and recharge date are same consider it as a hidden recharge and do not include it in ledger balance calculation. | [optional] |
| **payments** | [**Array&lt;PaymentCharge&gt;**](PaymentCharge.md) | List of payment charge history. | [optional] |
| **portfolio_id** | **Integer** | Id of the portfolio associated with this charge. | [optional] |
| **ref_no** | **String** | Reference number. | [optional] |
| **status** | **String** | The status of the lease. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::ChargeTx.new(
  amount: null,
  amount_due: null,
  amount_paid: null,
  charge_status: null,
  comments: null,
  created_by: null,
  created_date_time: null,
  date: null,
  gl_account_id: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  lease_id: null,
  parent_tx_id: null,
  payments: null,
  portfolio_id: null,
  ref_no: null,
  status: null
)
```

