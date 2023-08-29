# Propertyware::SaveWorkOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorize_enter** | **String** | This field indicates if the tenant has granted the maintenance staff permission to enter the unit. | [optional] |
| **building_id** | **Integer** | Id of the building associated with this work order. |  |
| **category** | **String** | Category of the work order. | [optional] |
| **cost_estimate** | **Float** | Enter an estimate of the cost for performing the work outlined in the work order. | [optional] |
| **date_to_enter** | **Date** | Authorized date to enter unit. | [optional] |
| **description** | **String** | Description of the work order. | [optional] |
| **hour_estimate** | **Float** | Estimated number of hours to complete the work order. | [optional] |
| **hour_to_enter** | **Integer** | Hour to enter. Allowed Value : 0 , 1, 2 ... 23 | [optional] |
| **minute_to_enter** | **Integer** | Minute to enter. Allowed Value : 0, 10, 20, 30, 40, 50 | [optional] |
| **priority** | **String** | Priority of the work order. | [optional] |
| **requested_by** | **Integer** | Id of the person that reported the problem, typically the tenant or owner associated with the buildings or units. | [optional] |
| **scheduled_end_date** | **Date** | Date on which the work is scheduled to be completed. | [optional] |
| **search_tag** | **String** | Enter a key term to allow you to quickly locate the work order. | [optional] |
| **start_date** | **Date** | Date on which the work was started. | [optional] |
| **type** | **String** | This classifies the work order into one of the following types: General, Service Request, Turnover, Inspection, Estimate etc. | [optional] |
| **unit_ids** | **Array&lt;Integer&gt;** | List of unit Ids that are attached to the building. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveWorkOrder.new(
  authorize_enter: null,
  building_id: null,
  category: null,
  cost_estimate: null,
  date_to_enter: null,
  description: null,
  hour_estimate: null,
  hour_to_enter: null,
  minute_to_enter: null,
  priority: null,
  requested_by: null,
  scheduled_end_date: null,
  search_tag: null,
  start_date: null,
  type: null,
  unit_ids: null
)
```

