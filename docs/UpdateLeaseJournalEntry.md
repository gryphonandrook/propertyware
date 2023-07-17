# Propertyware::UpdateLeaseJournalEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comments** | **String** | Comments. |  |
| **date** | **Date** | Journal entry date. |  |
| **journal_entry_split** | [**Array&lt;JournalEntrySplit&gt;**](JournalEntrySplit.md) | Journal Entry Splits. | [optional] |
| **lease_id** | **Integer** | Lease id to apply journal entry. |  |
| **ref_no** | **String** | Journal entry reference number. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::UpdateLeaseJournalEntry.new(
  comments: null,
  date: null,
  journal_entry_split: null,
  lease_id: null,
  ref_no: null
)
```

