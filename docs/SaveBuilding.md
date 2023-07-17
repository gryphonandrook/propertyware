# Propertyware::SaveBuilding

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **abbreviation** | **String** | Building abbreviation. |  |
| **address** | [**SaveAddress**](SaveAddress.md) |  | [optional] |
| **allocation_method** | **String** | Allocation method. | [optional] |
| **available_date** | **Date** | Date the building is available for leasing. | [optional] |
| **category** | **String** | Building category. |  |
| **count_unit** | **Integer** | Indicates number of units in the building. |  |
| **description** | **String** | Marketing description. | [optional] |
| **floor_number** | **Integer** | Floor number. | [optional] |
| **management_fee_type** | **String** | Indicates management fee type of a building. | [optional] |
| **management_flat_fee** | **Float** | Indicates management flat fee. | [optional] |
| **marketing_name** | **String** | Marketing name. | [optional] |
| **multi_unit** | **Boolean** | Indicates if the building is multi family or single family. | [optional] |
| **name** | **String** | Name of the building. |  |
| **naming** | **String** | Unit naming (Unit, Suite, Space, Custom). | [optional] |
| **neighborhood** | **String** | Neighborhood. | [optional] |
| **number_bathrooms** | **Float** | Number of bathrooms in the building. | [optional] |
| **number_bedrooms** | **Integer** | Number of bedrooms in the building. | [optional] |
| **number_floors** | **Integer** | Number of floors. | [optional] |
| **numbered** | **String** | Numbered alpha, numeric. | [optional] |
| **other_tenant_charges** | **String** | Other tenant charges. | [optional] |
| **parcel_number** | **String** | Parcel number. | [optional] |
| **pets_allowed** | **Boolean** | Pets allowed. | [optional] |
| **portfolio_id** | **Integer** | ID of the portfolio associated with this building. |  |
| **posting_title** | **String** | Marketing posting title. | [optional] |
| **property_type** | **String** | Property type. |  |
| **published_for_rent** | **String** | Published for rent. | [optional] |
| **rentable** | **Boolean** | Indicates if the building is rentable. | [optional] |
| **search_tag** | **String** | Search tag name. | [optional] |
| **short_description** | **String** | Marketing short description. | [optional] |
| **target_deposit** | **String** | Target deposit. | [optional] |
| **target_rent** | **Float** | Market rent for the building. | [optional] |
| **total_area** | **Float** | Building area. | [optional] |
| **type** | **String** | Indicates Building type like Office, Industrial, Retail, Healthcare, Government, Airport, Garage/Parking, Apartment Building, Duplex / Triplex, Mobile Home / RV Community etc. |  |
| **year_built_as_string** | **String** | Building built year. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveBuilding.new(
  abbreviation: null,
  address: null,
  allocation_method: null,
  available_date: null,
  category: null,
  count_unit: null,
  description: null,
  floor_number: null,
  management_fee_type: null,
  management_flat_fee: null,
  marketing_name: null,
  multi_unit: false,
  name: null,
  naming: null,
  neighborhood: null,
  number_bathrooms: null,
  number_bedrooms: null,
  number_floors: null,
  numbered: null,
  other_tenant_charges: null,
  parcel_number: null,
  pets_allowed: false,
  portfolio_id: null,
  posting_title: null,
  property_type: null,
  published_for_rent: null,
  rentable: false,
  search_tag: null,
  short_description: null,
  target_deposit: null,
  target_rent: null,
  total_area: null,
  type: null,
  year_built_as_string: null
)
```

