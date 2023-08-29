# Propertyware::SaveVendor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** | Account Number | [optional] |
| **address** | **String** | Address | [optional] |
| **address2** | **String** | Address2 | [optional] |
| **alert_email** | **String** | Alert Email | [optional] |
| **city** | **String** | City | [optional] |
| **company_name** | **String** | Vendor Company Name |  |
| **country** | **String** | Country | [optional] |
| **credit_limit** | **Float** | Credit Limit | [optional] |
| **days_to_pay** | **Integer** | Payment Terms days to pay. | [optional] |
| **default_bill_split_account_id** | **Integer** | Default bill split id | [optional] |
| **default_markup_discount_percentage** | **Float** | Default markup discount | [optional] |
| **description** | **String** | Description | [optional] |
| **eligible1099** | **Boolean** | Eligible For 1099 | [optional] |
| **email** | **String** | EMail | [optional] |
| **fax** | **String** | Fax | [optional] |
| **include_company_name_on1099** | **Boolean** | Include company name on 1099 | [optional] |
| **markup_account_id** | **Integer** | Markup account id | [optional] |
| **name** | **String** | Vendor Name |  |
| **name_on_check** | **String** | Vendor Name On Check |  |
| **phone** | **String** | Phone | [optional] |
| **search_tag** | **String** | Search Tag | [optional] |
| **state** | **String** | State | [optional] |
| **sync_to_vmm** | **Boolean** | Sync to maintenance | [optional] |
| **tax_id** | **String** | Tax ID | [optional] |
| **tax_payer_name** | **String** | Tax Payer Name | [optional] |
| **terms** | **String** | Payment Terms Description, default value(&#39;NET 30&#39;) | [optional] |
| **time_tracking** | **Boolean** | Time Tracking, is enabled or disabled | [optional] |
| **vendor_type** | **String** | Vendor type. This is a user configurable list with the following initial default values &lt;Banking - General&gt;,  &lt;Banking - Mortgage&gt;, &lt;Banking - Investment&gt;, &lt;Contractors - Carpentry&gt;, &lt;Contractors - Dry Wall&gt;, &lt;Contractors - Electrical&gt;, &lt;Contractors - Fencing&gt;, &lt;Contractors - Flooring&gt;, &lt;Contractors - General&gt;, &lt;Contractors - HVAC&gt;, &lt;Contractors - Landscaping&gt;, &lt;Contractors - Masonry&gt;, &lt;Contractors - Miscellaneous&gt;, &lt;Contractors - Painting&gt;, &lt;Contractors - Paving&gt;, &lt;Contractors - Plumbing&gt;, &lt;Contractors - Roofing&gt;, &lt;Contractors - Sheet Metal&gt;, &lt;Contractors - Windows&gt;, &lt;Owners&gt;, &lt;Management Company&gt;, &lt;Suppliers - Carpets&gt;, &lt;Suppliers - Electrical&gt;, &lt;Suppliers - General&gt;, &lt;Suppliers - Lighting&gt;, &lt;Suppliers - Lumber&gt;, &lt;Suppliers - Plumbing&gt;, &lt;Suppliers - Security&gt;, &lt;Suppliers - Stone&gt;, &lt;Suppliers - Tiling&gt;, &lt;Suppliers - Windows&gt;, &lt;Utilities - Communications&gt;, &lt;Utilities - Gas &amp; Electric&gt;, &lt;Utilities - Waste Management&gt;, &lt;Utilities - Water&gt; |  |
| **website** | **String** | Website | [optional] |
| **zip** | **String** | Zip | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::SaveVendor.new(
  account_number: null,
  address: null,
  address2: null,
  alert_email: null,
  city: null,
  company_name: null,
  country: null,
  credit_limit: null,
  days_to_pay: null,
  default_bill_split_account_id: null,
  default_markup_discount_percentage: null,
  description: null,
  eligible1099: false,
  email: null,
  fax: null,
  include_company_name_on1099: false,
  markup_account_id: null,
  name: null,
  name_on_check: null,
  phone: null,
  search_tag: null,
  state: null,
  sync_to_vmm: false,
  tax_id: null,
  tax_payer_name: null,
  terms: null,
  time_tracking: false,
  vendor_type: null,
  website: null,
  zip: null
)
```

