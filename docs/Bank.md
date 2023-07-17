# Propertyware::Bank

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_holder** | **String** | Account holder. | [optional] |
| **bank_account_holder_ssn_masked** | **String** | Account holder SSN. | [optional] |
| **bank_account_number_decrypted** | **String** | Bank account number. | [optional] |
| **bank_account_type** | **Integer** | Bank account type - 1: Checking, 2: Savings | [optional] |
| **bank_address** | **String** | Bank address line 1. | [optional] |
| **bank_address2** | **String** | Bank address line 2. | [optional] |
| **bank_city** | **String** | City. | [optional] |
| **bank_institution** | **String** | Bank name. | [optional] |
| **bank_routing_number_decrypted** | **String** | Bank routing number. | [optional] |
| **bank_state** | **String** | State. | [optional] |
| **bank_transit_fraction** | **String** | Bank transit fraction. | [optional] |
| **bank_zip** | **String** | Zip. | [optional] |
| **deposit_ticket_type** | **Integer** | Deposit ticket type. | [optional] |
| **nacha_company_id** | **String** | Nacha company ID. | [optional] |
| **nacha_enabled** | **Boolean** | Indicates if Nacha payment type is enabled. | [optional] |
| **nacha_immediate_destination_number** | **String** | Nacha destination number. | [optional] |
| **nacha_immediate_origin_number** | **String** | Nacha immediate origin number. | [optional] |
| **nacha_originating_dfi_number** | **String** | Nacha originating DFI number. | [optional] |

## Example

```ruby
require 'propertyware'

instance = Propertyware::Bank.new(
  bank_account_holder: null,
  bank_account_holder_ssn_masked: null,
  bank_account_number_decrypted: null,
  bank_account_type: null,
  bank_address: null,
  bank_address2: null,
  bank_city: null,
  bank_institution: null,
  bank_routing_number_decrypted: null,
  bank_state: null,
  bank_transit_fraction: null,
  bank_zip: null,
  deposit_ticket_type: null,
  nacha_company_id: null,
  nacha_enabled: false,
  nacha_immediate_destination_number: null,
  nacha_immediate_origin_number: null,
  nacha_originating_dfi_number: null
)
```

