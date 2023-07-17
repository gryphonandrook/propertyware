# Propertyware::SavePortfolio

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **abbreviation** | **String** | Abbreviated name assigned to the portfolio. |  |
| **cash_accrual** | **String** | Cash or accrual accounting basis. | [optional] |
| **closing_date** | **Date** | Date when the accounting period for the portfolio will close. | [optional] |
| **do_not_pay_owner_draw** | **Boolean** | Indicates that the owner should not be paid owner draws. | [optional] |
| **maintenance_spending_limit** | **Float** | Monthly or yearly Maintenance Spending Limit set for the portfolio for maintenance bills created by work orders. | [optional] |
| **maintenance_spending_limit_time** | **String** | Monthly or Yearly Maintenance Spending Limit Time set for the portfolio for maintenance bills created by work orders. | [optional] |
| **name** | **String** | Name of the portfolio. |  |
| **owner_ids** | **Array&lt;Integer&gt;** | Portfolio owner Ids | [optional] |
| **owners** | [**Array&lt;SaveOwner&gt;**](SaveOwner.md) | Portfolio owners. | [optional] |
| **sticky_note** | **String** | Sticky notes. Maximum 500 characters. | [optional] |
| **target_operating_reserve** | **Float** | Minimum balance to be maintained within the portfolio at all times. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SavePortfolio.new(
  abbreviation: null,
  cash_accrual: null,
  closing_date: null,
  do_not_pay_owner_draw: false,
  maintenance_spending_limit: null,
  maintenance_spending_limit_time: null,
  name: null,
  owner_ids: null,
  owners: null,
  sticky_note: null,
  target_operating_reserve: null
)
```

