# Propertyware::InspectionsApi

All URIs are relative to *https://api.propertyware.com/pw/api/rest/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_inspection**](InspectionsApi.md#get_inspection) | **GET** /inspections/{inspectionId} | Retrieve a inspection |
| [**get_inspections**](InspectionsApi.md#get_inspections) | **GET** /inspections | Retrieve all inspections |


## get_inspection

> <Inspection> get_inspection(inspection_id, opts)

Retrieve a inspection

Retrieves a specific inspection.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">INSPECTIONS</span> - <code>Read</code> 

### Examples

```ruby
require 'time'
require 'propertyware'
# setup authorization
Propertyware.configure do |config|
  # Configure API key authorization: organizationId
  config.api_key['organizationId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['organizationId'] = 'Bearer'

  # Configure API key authorization: clientId
  config.api_key['clientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['clientId'] = 'Bearer'

  # Configure API key authorization: clientSecret
  config.api_key['clientSecret'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['clientSecret'] = 'Bearer'
end

api_instance = Propertyware::InspectionsApi.new
inspection_id = 789 # Integer | Inspection ID
opts = {
  include_custom_fields: true # Boolean | includeCustomFields
}

begin
  # Retrieve a inspection
  result = api_instance.get_inspection(inspection_id, opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling InspectionsApi->get_inspection: #{e}"
end
```

#### Using the get_inspection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Inspection>, Integer, Hash)> get_inspection_with_http_info(inspection_id, opts)

```ruby
begin
  # Retrieve a inspection
  data, status_code, headers = api_instance.get_inspection_with_http_info(inspection_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Inspection>
rescue Propertyware::ApiError => e
  puts "Error when calling InspectionsApi->get_inspection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inspection_id** | **Integer** | Inspection ID |  |
| **include_custom_fields** | **Boolean** | includeCustomFields | [optional][default to true] |

### Return type

[**Inspection**](Inspection.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inspections

> <Array<Inspection>> get_inspections(opts)

Retrieve all inspections

Retrieves a list of inspections.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">INSPECTIONS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>number</code>, <code>lastmodifieddatetime</code>, <code>status</code>, <code>id</code>

### Examples

```ruby
require 'time'
require 'propertyware'
# setup authorization
Propertyware.configure do |config|
  # Configure API key authorization: organizationId
  config.api_key['organizationId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['organizationId'] = 'Bearer'

  # Configure API key authorization: clientId
  config.api_key['clientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['clientId'] = 'Bearer'

  # Configure API key authorization: clientSecret
  config.api_key['clientSecret'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['clientSecret'] = 'Bearer'
end

api_instance = Propertyware::InspectionsApi.new
opts = {
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The offset is zero-based and the default is 0.
  limit: 56, # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 500 and the default is 100.
  last_modified_date_time_start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or after the date time specified. 
  last_modified_date_time_end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any item modified on or prior to the date time specified. 
  orderby: 'orderby_example', # String | Indicates the field(s) and direction to sort the results in the response.
  status: 'status_example', # String | Filters results to inspections with a specific status.
  portfolio_id: 789, # Integer | Filters results to inspections associated with a specific portfolio.
  building_id: 789, # Integer | Filters results to inspections associated with a specific building.
  type: 'type_example' # String | Filters results to inspections with a specific type.
}

begin
  # Retrieve all inspections
  result = api_instance.get_inspections(opts)
  p result
rescue Propertyware::ApiError => e
  puts "Error when calling InspectionsApi->get_inspections: #{e}"
end
```

#### Using the get_inspections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Inspection>>, Integer, Hash)> get_inspections_with_http_info(opts)

```ruby
begin
  # Retrieve all inspections
  data, status_code, headers = api_instance.get_inspections_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Inspection>>
rescue Propertyware::ApiError => e
  puts "Error when calling InspectionsApi->get_inspections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. | [optional][default to 100] |
| **last_modified_date_time_start** | **Time** | Filters results to any item modified on or after the date time specified.  | [optional] |
| **last_modified_date_time_end** | **Time** | Filters results to any item modified on or prior to the date time specified.  | [optional] |
| **orderby** | **String** | Indicates the field(s) and direction to sort the results in the response. | [optional] |
| **status** | **String** | Filters results to inspections with a specific status. | [optional] |
| **portfolio_id** | **Integer** | Filters results to inspections associated with a specific portfolio. | [optional] |
| **building_id** | **Integer** | Filters results to inspections associated with a specific building. | [optional] |
| **type** | **String** | Filters results to inspections with a specific type. | [optional] |

### Return type

[**Array&lt;Inspection&gt;**](Inspection.md)

### Authorization

[organizationId](../README.md#organizationId), [clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

