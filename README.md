# Propertyware

A Ruby client library for interacting with the [Propertyware API](https://app.propertyware.com/pw/apidocs), created and maintained by LeadSimple. This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project.

**DO NOT EDIT THIS README**. Edit the one in `bin/README.md` instead and rerun the `rebuild.sh` file, see below.

## Getting Started

1. Add this gem to your dependencies

   ```ruby
   # In your .gemspec, if any
   s.add_runtime_dependency "propertyware", "~> 1.0.0"

   # In your Gemfile
   gem "propertyware"
   ```

2. Get a Propertyware API client ID and secret in your Propertyware portal.

### Usage Examples

You can configure the gem in two ways.

#### Global Configuration

All requests will use a single API key. Use this when you only expect to make requests on behalf of one Propertyware account.

```ruby
# Load the gem
require 'propertyware'

# Setup authorization
Propertyware.configure do |config|
  # Configure API key username: clientId
  config.username = 'YOUR API CLIENT ID'

  # Configure API key authorization: clientSecret
  config.password = 'YOUR API CLIENT SECRET'
end

# Configure your Partner ID header
api_client = Propertyware::ApiClient.new
api_client.default_headers['X-Propertyware-System-ID'] = 'YOUR PARTNER ID'

api_instance = Propertyware::UnitsApi.new

begin
  # Get all units
  result = api_instance.units_get(query_params: {filters: {"LastUpdatedAtFrom" => '2020-12-15T16:30:46Z'}})
  p result
rescue Propertyware::ApiError => e
  puts "Exception when calling UnitsApi->units_get: #{e}"
end
```

#### Per-Request Configuration

If you need to make requests on behalf of several Propertyware accounts, then you will want to configure each request individually. Here's an example of how to do that:

```ruby
require "propertyware"

# Create a configuration object, configuring credentials
config = Propertyware::Configuration.new do
  config.api_key["clientId"] = "<CLIENT_ID>"
  config.api_key["clientSecret"] = "<CLIENT_SECRET>"
  config.api_key["organizationId"] = "<ORGANIZATION_ID>"
endl

# Build an API client
api_client = Propertyware::ApiClient.new(config)

# Hit their API
buildings_api = Propertyware::BuildingsApi.new(api_client)
buildings_api.get_buildings(query_params: {filters: {"lastModifiedDateTimeStart" => '2020-12-15T16:30:46Z'}})
# => [<Propertyware::Property ...>]
```

## Documentation

Read the [generated docs here](/DOCS.md). They're actually pretty good!

## Customizations

Besides using OpenAPI Generator, we have some overrides to their templates, to make things easier in our side. You can find about them [here](./CUSTOMIZATIONS.md).

## How to Regenerate This Library

1. Download a new `swagger.json` file from the [Propertyware docs](https://app.propertyware.com/pw/apidocs/) by clicking the "Download" button
2. Replace the `bin/propertyware.json` file with it
3. Increment the `gemVersion` key in `bin/config.yml`
4. Run `bin/rebuild.sh` to rebuild everything
