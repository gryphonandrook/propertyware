# Propertyware::AutoJournalEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comments** | **String** | Comments. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **credit** | **String** | Credit amount. | [optional] |
| **debit** | **String** | Debit amount. | [optional] |
| **end_date** | **Date** | End date. | [optional] |
| **frequency** | **String** | Frequency. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **last_post_date** | **Date** | Last post date. | [optional] |
| **name** | **String** | Auto journal entry name. | [optional] |
| **next_post_date** | **Date** | Next post date. | [optional] |
| **pay_day** | **String** | Pay day. | [optional] |
| **start_date** | **Date** | Start date. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::AutoJournalEntry.new(
  comments: null,
  created_by: null,
  created_date_time: null,
  credit: null,
  debit: null,
  end_date: null,
  frequency: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  last_post_date: null,
  name: null,
  next_post_date: null,
  pay_day: null,
  start_date: null
)
```

