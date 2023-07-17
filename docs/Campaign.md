# Propertyware::Campaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accepted_call_tracking_terms** | **Boolean** | Indicates if the call tracking terms have been accepted. | [optional] |
| **call_tracking_campaign_id** | **String** | Campaign ID used for call tracking. | [optional] |
| **call_tracking_enabled** | **Boolean** | Indicates if call tracking is enabled for the campaign. | [optional] |
| **call_tracking_forwar** | **String** | Number to which call tracking calls are forwarded. | [optional] |
| **call_tracking_forwar_after_hours** | **String** | Number to which call tracking calls are forwarded after hours. | [optional] |
| **call_tracking_phone_number** | **String** | Phone number used for call tracking. | [optional] |
| **call_tracking_referrer** | **String** | Referrer for call tracking. | [optional] |
| **call_tracking_search_phrase** | **String** | Search phrase for call tracking. | [optional] |
| **campaign_source** | [**CampaignSource**](CampaignSource.md) |  | [optional] |
| **code** | **String** | Code of the campaign. | [optional] |
| **created_by** | **String** | User who created the record. | [optional] |
| **created_date_time** | **Time** | Date and time the record was created. (Timezone: UTC) | [optional] |
| **custom_fields** | [**Array&lt;CustomField&gt;**](CustomField.md) | Custom fields. | [optional] |
| **description** | **String** | Description of the campaign. | [optional] |
| **end_date** | **Date** | End date of the campaign. | [optional] |
| **id** | **Integer** | Unique identifier. | [optional] |
| **last_modified_by** | **String** | User who last modified the record. | [optional] |
| **last_modified_date_time** | **Time** | Date and time the record was last modified. (Timezone: UTC) | [optional] |
| **name** | **String** | Name of the campaign. | [optional] |
| **start_date** | **Date** | Start date of the campaign. | [optional] |
| **target_prospect_type** | **String** | Type of the targeted prospect. | [optional] |
| **timezone** | **String** | Time zone of the campaign. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Campaign.new(
  accepted_call_tracking_terms: false,
  call_tracking_campaign_id: null,
  call_tracking_enabled: false,
  call_tracking_forwar: null,
  call_tracking_forwar_after_hours: null,
  call_tracking_phone_number: null,
  call_tracking_referrer: null,
  call_tracking_search_phrase: null,
  campaign_source: null,
  code: null,
  created_by: null,
  created_date_time: null,
  custom_fields: null,
  description: null,
  end_date: null,
  id: null,
  last_modified_by: null,
  last_modified_date_time: null,
  name: null,
  start_date: null,
  target_prospect_type: null,
  timezone: null
)
```

