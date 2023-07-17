# Propertyware::SaveProspect

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **building_id** | **Integer** | Unique identifier of the building associated with the prospect. | [optional] |
| **comments** | **String** | This is a description of the Prospect. | [optional] |
| **contacts** | [**Array&lt;SaveProspectContact&gt;**](SaveProspectContact.md) | Prospect contacts. | [optional] |
| **current_home_type** | **String** | Prospect Current Home Type. | [optional] |
| **current_rent_mortgage** | **Float** | Prospect Current Home Mortgage. | [optional] |
| **has_pets** | **Boolean** | Prospect Has Pets. | [optional] |
| **move_in_date** | **Date** | Prospect Move In Date. | [optional] |
| **neighborhood_desired** | **String** | Prospect Neighborhood Desired. | [optional] |
| **number_bathrooms** | **Float** | Prospect Number Of Bathrooms. | [optional] |
| **number_bedrooms** | **Integer** | Prospect Number Of Bedrooms. | [optional] |
| **number_of_pets** | **Integer** | Prospect Number Of Pets. | [optional] |
| **pet_type** | **String** | Prospect Pet Type. | [optional] |
| **pet_weights** | **String** | Prospect Pet Weights. | [optional] |
| **preferred_contact_method** | **String** | Prospect Preferred Contact Method. | [optional] |
| **property_address** | **String** | Property Address. | [optional] |
| **property_address2** | **String** | Property Address Continued. | [optional] |
| **property_city** | **String** | Property City. | [optional] |
| **property_country** | **String** | Property Country. | [optional] |
| **property_number_bathrooms** | **Float** | Property Number Of Bath rooms. | [optional] |
| **property_number_bedrooms** | **Integer** | Property Number Of Bedrooms. | [optional] |
| **property_state** | **String** | Property State. | [optional] |
| **property_zip** | **String** | Property Zip. | [optional] |
| **reason_for_moving** | **String** | Prospect Reason For Moving. | [optional] |
| **rent_max** | **Float** | Prospect Rent Maximum. | [optional] |
| **rent_min** | **Float** | Prospect Rent Minimum. | [optional] |
| **source** | **String** | Prospect Source. | [optional] |
| **status** | **String** | Prospect Status. | [optional] |
| **time_at_current_residence** | **String** | Prospect Time At Current Residence. | [optional] |
| **type** | **String** | Prospect Type. | [optional] |
| **type_of_inquiry** | **String** | Prospect Type Of Inquiry. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveProspect.new(
  building_id: null,
  comments: null,
  contacts: null,
  current_home_type: null,
  current_rent_mortgage: null,
  has_pets: false,
  move_in_date: null,
  neighborhood_desired: null,
  number_bathrooms: null,
  number_bedrooms: null,
  number_of_pets: null,
  pet_type: null,
  pet_weights: null,
  preferred_contact_method: null,
  property_address: null,
  property_address2: null,
  property_city: null,
  property_country: null,
  property_number_bathrooms: null,
  property_number_bedrooms: null,
  property_state: null,
  property_zip: null,
  reason_for_moving: null,
  rent_max: null,
  rent_min: null,
  source: null,
  status: null,
  time_at_current_residence: null,
  type: null,
  type_of_inquiry: null
)
```

