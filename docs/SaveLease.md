# Propertyware::SaveLease

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comments** | **String** | Comments. | [optional] |
| **end_date** | **Date** | End Date. |  |
| **leasing_fee_amount** | **Float** | Move in leasing fee amount. | [optional] |
| **leasing_fee_date** | **Date** | Move in leasing fee post date. | [optional] |
| **leasing_fee_ref_no** | **String** | Move in leasing fee reference number. | [optional] |
| **move_in_date** | **Date** | Move In Date. |  |
| **move_out_date** | **Date** | Move Out Date. | [optional] |
| **post_first_charge** | **Boolean** | Indicates how to post first rent charge while move in. | [optional] |
| **primary_contact_id** | **Integer** | Primary contact ID, Should be one of Tenant IDs. |  |
| **prorate_month** | **String** | Indicates how to post first rent charge while move in. | [optional] |
| **rent_auto_charge** | [**SaveAutoCharge**](SaveAutoCharge.md) |  | [optional] |
| **sec_dep_amount** | **Float** | Move in security deposit amount. | [optional] |
| **sec_dep_charge_date** | **Date** | Move in security deposit charge date. | [optional] |
| **start_date** | **Date** | Start Date. |  |
| **status** | **String** | Lease Status. | [optional] |
| **tenant_ids** | **Array&lt;Integer&gt;** | Tenant IDs. |  |
| **unit_id** | **Integer** | Unit/Building ID. |  |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveLease.new(
  comments: null,
  end_date: null,
  leasing_fee_amount: null,
  leasing_fee_date: null,
  leasing_fee_ref_no: null,
  move_in_date: null,
  move_out_date: null,
  post_first_charge: false,
  primary_contact_id: null,
  prorate_month: null,
  rent_auto_charge: null,
  sec_dep_amount: null,
  sec_dep_charge_date: null,
  start_date: null,
  status: null,
  tenant_ids: null,
  unit_id: null
)
```

