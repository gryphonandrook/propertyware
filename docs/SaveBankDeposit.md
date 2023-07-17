# Propertyware::SaveBankDeposit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_gl_account_id** | **Integer** | Bank Account Number. |  |
| **list_of_tx_ids** | **String** | Comma separated list of Transaction IDs. |  |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveBankDeposit.new(
  bank_gl_account_id: null,
  list_of_tx_ids: null
)
```

