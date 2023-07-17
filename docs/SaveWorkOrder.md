# Propertyware::SaveWorkOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **building_id** | **Integer** | Id of the building associated with this work order. | [optional] |
| **category** | **String** | Category of the work order. | [optional] |
| **description** | **String** | Description of the work order. | [optional] |
| **hour_estimate** | **Float** | Estimated number of hours to complete the work order. | [optional] |
| **priority** | **String** | Priority of the work order. | [optional] |
| **requested_by** | **Integer** | Id of the person that reported the problem, typically the tenant or owner associated with the buildings or units. | [optional] |
| **scheduled_end_date** | **Date** | Date on which the work is scheduled to be completed. | [optional] |
| **start_date** | **Date** | Date on which the work was started. | [optional] |
| **type** | **String** | This classifies the work order into one of the following types: General, Service Request, Turnover, Inspection, Estimate etc. | [optional] |
| **unit_ids** | **Array&lt;Integer&gt;** | List of unit Ids that are attached to the building. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveWorkOrder.new(
  building_id: null,
  category: null,
  description: null,
  hour_estimate: null,
  priority: null,
  requested_by: null,
  scheduled_end_date: null,
  start_date: null,
  type: null,
  unit_ids: null
)
```

