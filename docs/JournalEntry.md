# Propertyware::JournalEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comments** | **String** | Comments. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **date** | **String** | Journal entry post date. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **journal_entry_split** | [**Array&lt;JournalEntrySplitResponse&gt;**](JournalEntrySplitResponse.md) | List of journal entry splits. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **lease_id** | **Integer** | Id of the lease associated with this journal entry. | [optional] |
| **ref_no** | **String** | Journal entry reference number. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::JournalEntry.new(
  comments: null,
  created_by: null,
  created_date_time: null,
  date: null,
  id: null,
  journal_entry_split: null,
  last_modified_by: null,
  last_modified_date_time: null,
  lease_id: null,
  ref_no: null
)
```

