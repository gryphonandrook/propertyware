# Propertyware::Prospect

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_fee_paid** | **Boolean** | Indicates if the application fee has been paid by the prospect. | [optional] |
| **assigne_full_name** | **String** | Name of the assigned prospect. | [optional] |
| **building_id** | **Integer** | Id of the building associated with the prospect. | [optional] |
| **city_desired** | **String** | Desired city. | [optional] |
| **comments** | **String** | Indicates if the prospect has any comments. | [optional] |
| **contacts** | [**Array&lt;ProspectContact&gt;**](ProspectContact.md) | Contacts of the prospect | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **current_home_type** | **String** | Current home type. | [optional] |
| **current_rent_mortgage** | **Float** | Current home mortgage. | [optional] |
| **custom_fields** | [**Array&lt;CustomField&gt;**](CustomField.md) | Custom fields. | [optional] |
| **has_pets** | **Boolean** | Indicates if the prospect has pets. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **lease_end_date** | **Date** | Confirmed lease end date. | [optional] |
| **lease_start_date** | **Date** | Confirmed lease start date. | [optional] |
| **move_in_date** | **Date** | Desired move-in date. | [optional] |
| **neighborhood_desired** | **String** | Desired neighborhood. | [optional] |
| **number_bathrooms** | **Float** | Number of bathrooms desired by the prospect. | [optional] |
| **number_bedrooms** | **Integer** | Number of bedrooms desired by the prospect. | [optional] |
| **number_of_pets** | **Integer** | Number of pets. | [optional] |
| **pet_type** | **String** | Pet type. | [optional] |
| **pet_weights** | **String** | Pet weights. | [optional] |
| **portfolio_id** | **Integer** | Id of the portfolio associated with the prospect. | [optional] |
| **preferred_contact_method** | **String** | Preferred contact method. | [optional] |
| **property_address** | **String** | Address of the property. | [optional] |
| **property_address2** | **String** | Additional address information of the property. | [optional] |
| **property_area** | **Float** | Area of the property. | [optional] |
| **property_area_units** | **String** | Unit of measurement for the area of the property. | [optional] |
| **property_city** | **String** | City of the property. | [optional] |
| **property_country** | **String** | Country of the property. | [optional] |
| **property_number_bathrooms** | **Float** | Number of bathrooms. | [optional] |
| **property_number_bedrooms** | **Integer** | Number of bedrooms. | [optional] |
| **property_state** | **String** | State of the property. | [optional] |
| **property_zip** | **String** | Zip code of the property. | [optional] |
| **reason_for_moving** | **String** | Reason for moving. | [optional] |
| **rent** | **Float** | Confirmed lease rent. | [optional] |
| **rent_max** | **Float** | Maximum desired rent. | [optional] |
| **rent_min** | **Float** | Minimum desired rent. | [optional] |
| **security_deposit** | **Float** | Confirmed lease security deposit. | [optional] |
| **source** | **String** | Prospect source. | [optional] |
| **state_desired** | **String** | Desired state. | [optional] |
| **status** | **String** | Status. | [optional] |
| **time_at_current_residence** | **String** | Time the prospect is living at the current residence. | [optional] |
| **type** | **String** | Prospect type. | [optional] |
| **type_of_inquiry** | **String** | Type of inquiry made by the prospect. | [optional] |
| **unit_desired** | **String** | Desired unit. | [optional] |
| **unit_id** | **Integer** | Id of the unit associated with the prospect. | [optional] |
| **unit_type_desired** | **String** | Desired unit type. | [optional] |
| **zip_desired** | **String** | Desired zip code. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Prospect.new(
  application_fee_paid: false,
  assigne_full_name: null,
  building_id: null,
  city_desired: null,
  comments: null,
  contacts: null,
  created_by: null,
  created_date_time: null,
  current_home_type: null,
  current_rent_mortgage: null,
  custom_fields: null,
  has_pets: false,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  lease_end_date: null,
  lease_start_date: null,
  move_in_date: null,
  neighborhood_desired: null,
  number_bathrooms: null,
  number_bedrooms: null,
  number_of_pets: null,
  pet_type: null,
  pet_weights: null,
  portfolio_id: null,
  preferred_contact_method: null,
  property_address: null,
  property_address2: null,
  property_area: null,
  property_area_units: null,
  property_city: null,
  property_country: null,
  property_number_bathrooms: null,
  property_number_bedrooms: null,
  property_state: null,
  property_zip: null,
  reason_for_moving: null,
  rent: null,
  rent_max: null,
  rent_min: null,
  security_deposit: null,
  source: null,
  state_desired: null,
  status: null,
  time_at_current_residence: null,
  type: null,
  type_of_inquiry: null,
  unit_desired: null,
  unit_id: null,
  unit_type_desired: null,
  zip_desired: null
)
```

