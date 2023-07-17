# Propertyware::Conversation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comments** | [**Array&lt;Comment&gt;**](Comment.md) | List of comments in the conversation. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **entity_id** | **Integer** | Id of the entity related to this conversation. | [optional] |
| **entity_type** | **String** | Type of the entity related to this conversation. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **subject** | **String** | Conversation subject. | [optional] |
| **type** | **String** | Conversation type. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Conversation.new(
  comments: null,
  created_by: null,
  created_date_time: null,
  entity_id: null,
  entity_type: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  subject: null,
  type: null
)
```

