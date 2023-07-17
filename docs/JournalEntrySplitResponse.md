# Propertyware::JournalEntrySplitResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_amount** | **Float** | Credit amount. |  |
| **debit_amount** | **Float** | Debit amount. |  |
| **gl_account_id** | **Integer** | Id of the general ledger account associated with this journal entry split. |  |
| **id** | **Integer** | Unique identifier. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::JournalEntrySplitResponse.new(
  credit_amount: null,
  debit_amount: null,
  gl_account_id: null,
  id: null
)
```

