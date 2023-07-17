# Propertyware::Equity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **discount_account** | **Boolean** | Indicates if account is a discount account. | [optional] |
| **escrow_account** | **Boolean** | Indicates if account is a escrow account. | [optional] |
| **exclude_from1099** | **Boolean** | Indicates if account is excluded from Form1099. | [optional] |
| **exclude_from_pay_in_full** | **Boolean** | Indicates if account is excluded from paying in full. | [optional] |
| **exclude_late_fee** | **Boolean** | Indicates if excluding from late fees. | [optional] |
| **rent_account** | **Boolean** | Indicates if account is a rent account. | [optional] |
| **tax_account** | **Boolean** | Indicates if account is a tax account. | [optional] |
| **transfer_balance_to_retained_earnings** | **Boolean** | Indicates if Transfer balance at year end to Retained earnings. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Equity.new(
  discount_account: false,
  escrow_account: false,
  exclude_from1099: false,
  exclude_from_pay_in_full: false,
  exclude_late_fee: false,
  rent_account: false,
  tax_account: false,
  transfer_balance_to_retained_earnings: false
)
```

