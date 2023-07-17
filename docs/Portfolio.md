# Propertyware::Portfolio

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **abbreviation** | **String** | Abbreviated name assigned to the portfolio. | [optional] |
| **active** | **Boolean** | Indicates if portfolio is active or inactive. | [optional] |
| **cash_accrual** | **String** | Cash or accrual accounting basis. | [optional] |
| **closing_date** | **Date** | Date when the accounting period for the portfolio will close. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **custom_fields** | [**Array&lt;CustomField&gt;**](CustomField.md) | Custom fields. | [optional] |
| **default_bank_account_id** | **Integer** | Id of the portfolio&#39;s default bank account. | [optional] |
| **default_bank_account_number_and_description** | **String** | Portfolio default bank account number and description | [optional] |
| **default_security_deposit_bank_account_id** | **Integer** | Portfolio default security deposit bank account ID | [optional] |
| **default_security_deposit_bank_account_number_and_description** | **String** | Portfolio default security deposit bank account number and description | [optional] |
| **do_not_pay_owner_draw** | **Boolean** | Indicates if the owner should not be paid owner draws. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **maintenance_spending_limit** | **Float** | Monthly or yearly maintenance spending limit set for the portfolio for maintenance bills created by work orders. | [optional] |
| **maintenance_spending_limit_time** | **String** | Monthly or yearly maintenance spending limit time set for the portfolio for maintenance bills created by work orders. | [optional] |
| **modified_by** | **String** | Id of the user who last modified the portfolio information. | [optional] |
| **name** | **String** | Portfolio name. | [optional] |
| **owners** | [**Array&lt;Owner&gt;**](Owner.md) | List of portfolio owners. | [optional] |
| **sticky_note** | **String** | Sticky notes. | [optional] |
| **target_operating_reserve** | **Float** | Minimum balance to be maintained within the portfolio at all times. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Portfolio.new(
  abbreviation: null,
  active: false,
  cash_accrual: null,
  closing_date: null,
  created_by: null,
  created_date_time: null,
  custom_fields: null,
  default_bank_account_id: null,
  default_bank_account_number_and_description: null,
  default_security_deposit_bank_account_id: null,
  default_security_deposit_bank_account_number_and_description: null,
  do_not_pay_owner_draw: false,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  maintenance_spending_limit: null,
  maintenance_spending_limit_time: null,
  modified_by: null,
  name: null,
  owners: null,
  sticky_note: null,
  target_operating_reserve: null
)
```

