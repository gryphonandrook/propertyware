# Propertyware::SaveWorkOrderTask

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **completed** | **Boolean** | Indicates if the task is completed. | [optional] |
| **delegates** | **String** | Comma separated list of user ids to delegate the task to. | [optional] |
| **description** | **String** | Task description. |  |
| **due_date** | **Date** | Task due date. | [optional] |
| **is_private** | **Boolean** | Indicates if the task is private. | [optional] |
| **starred** | **Boolean** | Indicates if the task is starred. | [optional] |
| **tags** | **String** | Comma separated task tags. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveWorkOrderTask.new(
  completed: false,
  delegates: null,
  description: null,
  due_date: null,
  is_private: false,
  starred: false,
  tags: null
)
```

