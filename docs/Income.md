# Propertyware::Income

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cam_recovery_account** | **Boolean** | Indicates if account is a CAM recovery account. | [optional] |
| **discount_account** | **Boolean** | Indicates if account is a discount account. | [optional] |
| **escrow_account** | **Boolean** | Indicates if account is a escrow account. | [optional] |
| **exclude_from1099** | **Boolean** | Indicates if account is excluded from Form1099. | [optional] |
| **exclude_from_pay_in_full** | **Boolean** | Indicates if account is excluded from paying in full. | [optional] |
| **exclude_late_fee** | **Boolean** | Indicates if excluding from late fees. | [optional] |
| **rent_account** | **Boolean** | Indicates if account is a rent account. | [optional] |
| **section8** | **Boolean** | Indicates if account is a section8 account. | [optional] |
| **tax_account** | **Boolean** | Indicates if account is a tax account. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Income.new(
  cam_recovery_account: false,
  discount_account: false,
  escrow_account: false,
  exclude_from1099: false,
  exclude_from_pay_in_full: false,
  exclude_late_fee: false,
  rent_account: false,
  section8: false,
  tax_account: false
)
```

