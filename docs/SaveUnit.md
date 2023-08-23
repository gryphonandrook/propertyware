# Propertyware::SaveUnit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **abbreviation** | **String** | Abbreviation of Unit. |  |
| **address** | [**SaveAddress**](SaveAddress.md) |  | [optional] |
| **available_date** | **Date** | Unit Available date to lease. | [optional] |
| **building_id** | **Integer** | Id of the building associated with this unit. |  |
| **category** | **String** | Unit Category. |  |
| **county** | **String** | Unit region of a state. | [optional] |
| **description** | **String** | Marketing Description. | [optional] |
| **floor_number** | **Integer** | Floor number. | [optional] |
| **name** | **String** | Name of the unit. |  |
| **neighborhood** | **String** | Neighborhood. | [optional] |
| **number_bathrooms** | **Float** | Number of bathrooms in the unit. | [optional] |
| **number_bedrooms** | **Integer** | Number of bedrooms in the unit. | [optional] |
| **portfolio_id** | **Integer** | Id of the portfolio associated with this unit. |  |
| **ready** | **Boolean** | Indicates if property is ready to be leased. | [optional] |
| **reason_for_property_lost** | **String** | Reason for property lost. | [optional] |
| **residential** | **Boolean** | Is Unit is Residential or Commercial. | [optional] |
| **search_tag** | **String** | Search tag. | [optional] |
| **target_deposit** | **Float** | Target deposit amount. | [optional] |
| **target_rent** | **Float** | Market rent for the unit. | [optional] |
| **target_rent_units** | **String** | Property target rent units. | [optional] |
| **total_area** | **Float** | Unit Area. | [optional] |
| **type** | **String** | Indicates Unit type like Business Office,Medical Office,Showroom,R  and  D,Assigned Parking (Indoor),Assigned Parking (Outdoor),Warehouse,Restaurant,Shopping Mall Retail,Street Retail,Manufacturing,House,Town House,Apartment,Flat,Studio,Loft,Assigned Parking (Indoor),Assigned Parking (Outdoor) etc. |  |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveUnit.new(
  abbreviation: null,
  address: null,
  available_date: null,
  building_id: null,
  category: null,
  county: null,
  description: null,
  floor_number: null,
  name: null,
  neighborhood: null,
  number_bathrooms: null,
  number_bedrooms: null,
  portfolio_id: null,
  ready: false,
  reason_for_property_lost: null,
  residential: false,
  search_tag: null,
  target_deposit: null,
  target_rent: null,
  target_rent_units: null,
  total_area: null,
  type: null
)
```

