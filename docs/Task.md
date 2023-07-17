# Propertyware::Task

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **completed** | **Boolean** | Indicates if the task has been completed. | [optional] |
| **completed_time** | **Time** | Time at which the task was completed. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **delegates** | **String** | Comma separated IDs of users to whom the task has been delegated. | [optional] |
| **description** | **String** | Description of the task. | [optional] |
| **due_date** | **Date** | Date the task is due. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **private_task** | **Boolean** | Indicates if the task is private. | [optional] |
| **starred** | **Boolean** | Indicates if the task has been marked with a star. | [optional] |
| **tags** | **String** | List of tags associated with the task. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Task.new(
  completed: false,
  completed_time: null,
  created_by: null,
  created_date_time: null,
  delegates: null,
  description: null,
  due_date: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  private_task: false,
  starred: false,
  tags: null
)
```

