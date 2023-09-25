# Propertyware::Inspection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **building_id** | **Integer** | Id of the building associated with this inspection. | [optional] |
| **closed_date_and_time** | **Time** | Date and time the inspection closed (customer time zone). | [optional] |
| **comment** | **String** | Inspection comments. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **inspected_date_and_time** | **Time** | Date and time the inspection occurred (customer time zone). | [optional] |
| **inspection_areas** | [**Array&lt;InspectionArea&gt;**](InspectionArea.md) | List of inspection areas. | [optional] |
| **inspector_id** | **Integer** | Inspector ID | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **lease_id** | **Integer** | Id of the lease associated with this inspection. | [optional] |
| **notes_to_inspector** | **String** | Notes to Inspector | [optional] |
| **number** | **Integer** | Inspection number. | [optional] |
| **portfolio_id** | **Integer** | Id of the portfolio associated with this inspection. | [optional] |
| **scheduled_date_and_time** | **Time** | Date and time the inspection is/was scheduled to occur (customer time zone). | [optional] |
| **status** | **String** | Inspection status. | [optional] |
| **template_name** | **String** | Inspection template name. | [optional] |
| **type** | **String** | Inspection type. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Inspection.new(
  building_id: null,
  closed_date_and_time: null,
  comment: null,
  created_by: null,
  created_date_time: null,
  id: null,
  inspected_date_and_time: null,
  inspection_areas: null,
  inspector_id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  lease_id: null,
  notes_to_inspector: null,
  number: null,
  portfolio_id: null,
  scheduled_date_and_time: null,
  status: null,
  template_name: null,
  type: null
)
```

