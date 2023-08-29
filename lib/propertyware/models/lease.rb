=begin
#Open API, powered by Propertyware

#﻿<script type=\"text/javascript\" src=\"https://buildium.atlassian.net/s/d41d8cd98f00b204e9800998ecf8427e-T/-raa8on/b/8/c95134bc67d3a521bb3f4331beb9b804/_/download/batch/com.atlassian.jira.collector.plugin.jira-issue-collector-plugin:issuecollector/com.atlassian.jira.collector.plugin.jira-issue-collector-plugin:issuecollector.js?locale=en-US&collectorId=e43cd15d\"></script>    # Introduction    Welcome to Propertyware’s API—a powerful, RESTful programming interface that lets you leverage valuable Propertyware data.    ## Account Configuration  Before you can use Propertyware’s API, you’ll need to make some tweaks to your account settings.     <br />    ### Enabling the API   In order to start creating your keys and making requests, you’ll need to enable the API.    >  **Tip:** You’ll need an administrator user role with access to ***Administration Setup > API Keys*** to set things up properly.     **Let's Begin!**     1. Sign in to your [Propertyware](https://app.propertyware.com/pw/login.jsp) account from your browser.     2. Open the ***Setup*** page    3. On the left navigation bar, expand ***Administration Setup*** and then click ***API Keys***.     If you are having issues accessing the API keys page within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    ## API Keys  Account-level API keys authenticate every request and keep things secure.     API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Propertyware API key and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.     Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys     Now that the Open API is enabled, you’ll be able to create API keys. You’re almost there!    **How to create an API key**     1. On the API Keys page, click ***Create API Key***. A modal will appear.    <p>      <img src=\"APIKey_Page.JPG\"/>  </p>    <p>      <img src=\"APIKey_New.JPG\"/>  </p>    2. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request.    3. Now, choose which pieces of Propertyware data you want this API key to have access to by selecting the corresponding radio buttons. Once finished, click **GENERATE KEY**.    4. You have successfully created an API key! The client id and secret associated to this key will be presented.     <p>      <img src=\"APIKey_Generate.JPG\"/>  </p>    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.      You have now successfully created an API key and have everything you need to  send requests to the Propertyware API!     Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping API Keys Safe](#section/Getting-Started/Keeping-API-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.    ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Propertyware data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.    ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Propertyware entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Propertyware account.  <br />  <br />    ## How to Make a Request     You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!    > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.     ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Propertyware account. Your API key is how the Propertyware API authenticates requests and ensures only you can access your data.    #### Step 2: Install a HTTP client    The Propertyware API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Propertyware API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.    #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Buildings](#operation/getBuildingsUsingGET) in your account. This will confirm your connectivity to our platform and validate the keys you created on our website. Simply follow the instructions below.    1. Open the Postman application.   2. Open the *verb* menu and select **GET**.  3. Enter the request endpoint in the field next to GET.      - Here’s the endpoint to get all buildings: https://api.propertyware.com/pw/api/rest/v1/buildings.  4. To authenticate the request, enter your `client ID`, your `secret` and your `organization iD` respectively in these request headers:      - `x-propertyware-client-id`     - `x-propertyware-client-secret`     - `x-propertyware-system-id` _(organization id)_    The organization id uniquely identifies your Propertyware account and is an additional measure to enforce proper access to the correct data. ___Your client id and secret pair will only work with the organization it belongs to___.    Your full request should look similar to the image below.  <kbd><img src=\"request_example.png\" /></kbd>    5. Review the parameters of your request on last time. Once finished, click **Send**.    6. If successful, you should see a JSON response and a `200` HTTP status code. Congratulations! You've connected to the Propertyware API.    You now have the knowledge required to make requests for any of our resources.    If you've received an error response please review the JSON response message for a description of how to resolve the issue. You can also see more information about HTTP status codes in the [Response Codes](#section/API-Overview/Response-Codes) section. If you are still having trouble making a request after reviewing these sections please submit a [Support](#section/API-Overview/Support) request.    # API Overview  The Propertyware API is built upon standard REST conventions. It's designed to use consistent resource-oriented URLs, accept and return JSON-encoded messages, and use standard HTTP status codes and verbs.    ## Base URL  The base URL for production environment API requests is: `https://api.propertyware.com/pw/api/v1/rest`    In order to ensure all requests and responses are secure between the API consumer and Propertyware servers, requests must be made using the `https` protocol. Any requests not made with the `https` protocol will be refused by the Propertyware API platform.     > **Note:** URL paths are case-sensitive to stay consistent with common REST standards. If your request doesn’t align with the documented URL path, you’ll receive a `404` response code reminding you of this constraint.    ## API Versioning  The Propertyware API is version controlled. Versioning ensures backwards-incompatible changes to the API don’t impact any existing integrations.    Propertyware uses only a major version nomenclature to manage changes. The current version of the Propertyware API is version 1. By specifying a version in the resource request URL, you'll get expected responses regardless of future changes to the API. Here's an example of calling version 1 of the retrieve all leases resource:    `https://api.propertyware.com/pw/api/rest/v1/leases`    Any request submitted without the version in the URL path will result in a `404` error response code.     ### Releasing Changes to the API  The Propertyware API will continue to evolve to ensure it meets the needs of our customers. Changes will be defined as either backwards-compatible or backwards-incompatible.     We’ll provide advance notice for all API releases–regardless of the type of modifications being made.     #### Backward-compatible Changes  Backward-compatible changes are modifications to the API that shouldn't impact existing integrations. They'll apply to the current version of the API. Simply put: you won’t need to change the version to consume new changes like these.     It's important as you develop against the Propertyware API that you ensure  these types of changes don't impact your integration. Here's are examples of backward-compatible modifications.     * Adding new API resources and/or endpoints.  * Adding new optional request parameters to existing API methods.  * Adding new properties to existing API responses and non-required properties for request messages.  * Changing property order in existing API responses.    All backward-compatible changes to the API will be documented in the [Changelog](#section/Changelog).    #### Backwards-incompatible Changes    When backwards-incompatible changes to the API occur, a new version of the API will be released. You’ll need to update the URL path  to consume resources under the new API version.     Backwards-incompatible changes include:    * Removing a property from a request and/or response message.  * Changing the name of a property in a message.  * Adding a required parameter to a request message.  * Changing existing enumeration values.    New versions of the API will have full reference documentation and an upgrade guide.     ## Authentication    The Propertyware API uses API key’s client IDs and secrets to authenticate requests.     An organization ID, an API key client ID and secret must be passed in every request header using the following parameters:     - `x-propertyware-client-id`  - `x-propertyware-client-secret`  - `x-propertyware-system-id`    Failing to provide both of them in the request header will cause the API to return a `401` HTTP status code.  <!--  ## Rate Limiting (FUTURE)  Rate limits help us ensure consistent and reliable performance for all users, even during peak loads. That’s why we limit clients to **10 concurrent requests per second**.    If your request rate violates that limit, a response code of `429` is returned. Simply retry the request after a short interval (~200ms).  -->    ## Bulk Request Options  All top-level API resources support bulk fetches. For instance, you can retrieve all [Portfolios](#operation/getPortfoliosUsingGET). These resources also allow for filtering criteria. Each resource has descriptions of the filter criteria available.    In addition to filtering, our API gives you the ability to control the returned data’s pagination and the sort order.     ### Pagination  Endpoints that return result sets allow for pagination using `limit` and `offset` request parameters to reduce the amount of data returned.    The `limit` request parameter will cap the number of results that come back in the response. If you don't specify a `limit` value, a **default of 100 results** are returned. The maximum `limit` value is 500. If a `limit` value is specified greater than 500, it will be overridden to the default to 500.     The `offset` request parameter indicates the record position within the resultset to start at when returning the results. The `offset` is zero-based and is inclusive. If no `offset` value is submitted it will default to 0.       The total resultset count is returned in the HTTP Header `X-Total-Count`      #### Pagination Example    As an example, let's say we make a request to retrieve all rental properties with no paging parameters. Our response indicates in the `X-Total-Count` header that there are 150 total rental properties. We want to get only the last 50 results so we would submit a request with the `offset` set to 100 and the `limit` set to 50.    > **Note:** The `limit` and `offset` parameter names are case-sensitive. If they aren't formatted correctly, the API will return a `404` HTTP status code.    ### Sorting Results    You can specify the sort order of returned data by assigning properties from the returned object to the `orderby` parameter in the querystring. For example:  ```  orderby=name  ```  By default, the sort is performed in ascending order. To specify sort order, use \"asc\" for ascending or \"desc\" for descending. For example:  ```  orderby=name desc  ```  Additionally, you can sort by multiple properties by comma separating the properties. For example:  ```  orderby=abbreviation asc,name desc  ```    > **Note:** While the `orderby` parameter is case-sensitive, the properties specified in the `orderby` value aren't.     ## Response Codes  The Propertyware API supports standard HTTP status codes.    |Response Code          |Description  |  |--|--|  |200 OK | Everything worked as expected. |  |400 Bad Request | The request was unacceptable, often due to missing a required parameter.|  |401 Unauthorized|The API client ID and secret weren’t provided or they’re no longer valid. Be sure that the client ID and secret combination are correct and they are still active.|  |403 Forbidden|The API key doesn't have permission to perform the request. This could be due to authorization for the given endpoint or an inability to access given entities within the platform (e.g. properties).  |404 Not Found|The requested resource doesn't exist.|  |415 Unsupported Media Type |Ensure you have the appropriate content-type header value set on your request. Each resource is documented with media type(s) that are accepted.|  |429 Too Many Requests |Too many requests against the API too quickly. We recommend an exponential backoff of your requests.|  |500 and above - Server Errors|Something went wrong on Propertyware's end. Review the JSON response message for more details about the error.|    ## API Date Format  * For all request and response date fields allowing ISO date format: YYYY-MM-DD (e.g.2019-08-24).  * For all request and response dateAndTime fields format is allowing: YYYY-MM-dd'T'HH:mm:ssXXX (e.g.2022-06-28T08:47:13Z).    ## Support  If you are unable to resolve your issue after reviewing the API documentation our support team can assist you.    # Changelog  ### 2023-08-28  * Update a document    ### 2023-07-11  * Delete a document    ### 2023-07-11  * Retrieve all documents  * Retrieve a document  * Download a document    ### 2023-06-10  * Lease contacts are included in Retrieve all leases API response  * Lease contacts are included in Retrieve a lease API response    ### 2023-04-24  * Bulk Insertion: Prospects  * Bulk Insertion: Bill Payments    ### 2023-04-11    * Bulk Insertion: Portfolios  * Bulk Insertion: Buildings  * Bulk Insertion: Units    ### 2023-03-19    * Bulk insertion: contacts    ### 2023-03-08    * Bulk insertion: bills    ### 2023-01-24    * Custom fields in \"Get all\" endpoints  * Prospect creation  * Bill removals      ### 2022-10-25    * API Read operations for non-financial data    ### 2022-09-21    * API Read operations available 

The version of the OpenAPI document: 1.0
Contact: support@propertyware.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module Propertyware
  # Lease
  class Lease
    # Indicates if lease is Active.
    attr_accessor :active

    # Lease addendum(s).
    attr_accessor :addendums

    # Property base rent.
    attr_accessor :base_rent

    # Id of the building associated with this lease.
    attr_accessor :building_id

    # Description of the lease.
    attr_accessor :comments

    # List of the current tenants on the lease.
    attr_accessor :contacts

    # User who created the record.
    attr_accessor :created_by

    # Date and time the record was created. (Timezone: UTC)
    attr_accessor :created_date_time

    # Custom fields.
    attr_accessor :custom_fields

    # End date of the lease term.
    attr_accessor :end_date

    # Unique identifier.
    attr_accessor :id

    # Lease identification number.
    attr_accessor :id_number

    # User who last modified the record.
    attr_accessor :last_modified_by

    # Date and time the record was last modified. (Timezone: UTC)
    attr_accessor :last_modified_date_time

    # Textual description of the late fee rule applied to delinquent or unpaid lease charges.
    attr_accessor :late_fee_rule

    # Lease Balance.
    attr_accessor :lease_balance

    # Lease Name.
    attr_accessor :lease_name

    # Building and/or units the lease is currently attached to.
    attr_accessor :location

    # Day that the tenant(s) moved into the property.
    attr_accessor :move_in_date

    # Day that the tenant(s) vacated the property.
    attr_accessor :move_out_date

    # Day that the tenant(s) turned in a notice to vacate.
    attr_accessor :notice_given_date

    # Indicates if the lease has any payment types that they are prevented from using. For example, a lease with several bounced checks may be restricted from paying with checks for future payments.
    attr_accessor :payment_restriction

    # Id of the portfolio associated with this lease.
    attr_accessor :portfolio_id

    # Indicates if the tenant(s) of the lease receive any aid from a Public Assistance Program.
    attr_accessor :public_assistance_program

    # Reason for vacating the property.
    attr_accessor :reason_for_leaving

    # Day that the tenant(s) are expected to vacate the property.
    attr_accessor :schedule_move_out_date

    # Search tag.
    attr_accessor :search_tag

    # Lease signed date.
    attr_accessor :signed_date

    # Start date of the lease term.
    attr_accessor :start_date

    # Lease's current status.
    attr_accessor :status

    # Indicates if the tenants opted into Asset Protection Plan.
    attr_accessor :tenants_opts_into_asset_protection_plan

    # Lease Terminated Date.
    attr_accessor :terminated_date

    # Id of the unit associated with this lease.
    attr_accessor :unit_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'active' => :'active',
        :'addendums' => :'addendums',
        :'base_rent' => :'baseRent',
        :'building_id' => :'buildingID',
        :'comments' => :'comments',
        :'contacts' => :'contacts',
        :'created_by' => :'createdBy',
        :'created_date_time' => :'createdDateTime',
        :'custom_fields' => :'customFields',
        :'end_date' => :'endDate',
        :'id' => :'id',
        :'id_number' => :'idNumber',
        :'last_modified_by' => :'lastModifiedBy',
        :'last_modified_date_time' => :'lastModifiedDateTime',
        :'late_fee_rule' => :'lateFeeRule',
        :'lease_balance' => :'leaseBalance',
        :'lease_name' => :'leaseName',
        :'location' => :'location',
        :'move_in_date' => :'moveInDate',
        :'move_out_date' => :'moveOutDate',
        :'notice_given_date' => :'noticeGivenDate',
        :'payment_restriction' => :'paymentRestriction',
        :'portfolio_id' => :'portfolioID',
        :'public_assistance_program' => :'publicAssistanceProgram',
        :'reason_for_leaving' => :'reasonForLeaving',
        :'schedule_move_out_date' => :'scheduleMoveOutDate',
        :'search_tag' => :'searchTag',
        :'signed_date' => :'signedDate',
        :'start_date' => :'startDate',
        :'status' => :'status',
        :'tenants_opts_into_asset_protection_plan' => :'tenantsOptsIntoAssetProtectionPlan',
        :'terminated_date' => :'terminatedDate',
        :'unit_id' => :'unitID'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'active' => :'Boolean',
        :'addendums' => :'Array<LeaseClause>',
        :'base_rent' => :'Float',
        :'building_id' => :'Integer',
        :'comments' => :'String',
        :'contacts' => :'Array<LeaseContact>',
        :'created_by' => :'String',
        :'created_date_time' => :'Time',
        :'custom_fields' => :'Array<CustomField>',
        :'end_date' => :'Date',
        :'id' => :'Integer',
        :'id_number' => :'Integer',
        :'last_modified_by' => :'String',
        :'last_modified_date_time' => :'Time',
        :'late_fee_rule' => :'String',
        :'lease_balance' => :'Float',
        :'lease_name' => :'String',
        :'location' => :'String',
        :'move_in_date' => :'Date',
        :'move_out_date' => :'Date',
        :'notice_given_date' => :'Date',
        :'payment_restriction' => :'String',
        :'portfolio_id' => :'Integer',
        :'public_assistance_program' => :'String',
        :'reason_for_leaving' => :'String',
        :'schedule_move_out_date' => :'Date',
        :'search_tag' => :'String',
        :'signed_date' => :'Date',
        :'start_date' => :'Date',
        :'status' => :'String',
        :'tenants_opts_into_asset_protection_plan' => :'String',
        :'terminated_date' => :'Date',
        :'unit_id' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Propertyware::Lease` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Propertyware::Lease`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'addendums')
        if (value = attributes[:'addendums']).is_a?(Array)
          self.addendums = value
        end
      end

      if attributes.key?(:'base_rent')
        self.base_rent = attributes[:'base_rent']
      end

      if attributes.key?(:'building_id')
        self.building_id = attributes[:'building_id']
      end

      if attributes.key?(:'comments')
        self.comments = attributes[:'comments']
      end

      if attributes.key?(:'contacts')
        if (value = attributes[:'contacts']).is_a?(Array)
          self.contacts = value
        end
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'created_date_time')
        self.created_date_time = attributes[:'created_date_time']
      end

      if attributes.key?(:'custom_fields')
        if (value = attributes[:'custom_fields']).is_a?(Array)
          self.custom_fields = value
        end
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'id_number')
        self.id_number = attributes[:'id_number']
      end

      if attributes.key?(:'last_modified_by')
        self.last_modified_by = attributes[:'last_modified_by']
      end

      if attributes.key?(:'last_modified_date_time')
        self.last_modified_date_time = attributes[:'last_modified_date_time']
      end

      if attributes.key?(:'late_fee_rule')
        self.late_fee_rule = attributes[:'late_fee_rule']
      end

      if attributes.key?(:'lease_balance')
        self.lease_balance = attributes[:'lease_balance']
      end

      if attributes.key?(:'lease_name')
        self.lease_name = attributes[:'lease_name']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'move_in_date')
        self.move_in_date = attributes[:'move_in_date']
      end

      if attributes.key?(:'move_out_date')
        self.move_out_date = attributes[:'move_out_date']
      end

      if attributes.key?(:'notice_given_date')
        self.notice_given_date = attributes[:'notice_given_date']
      end

      if attributes.key?(:'payment_restriction')
        self.payment_restriction = attributes[:'payment_restriction']
      end

      if attributes.key?(:'portfolio_id')
        self.portfolio_id = attributes[:'portfolio_id']
      end

      if attributes.key?(:'public_assistance_program')
        self.public_assistance_program = attributes[:'public_assistance_program']
      end

      if attributes.key?(:'reason_for_leaving')
        self.reason_for_leaving = attributes[:'reason_for_leaving']
      end

      if attributes.key?(:'schedule_move_out_date')
        self.schedule_move_out_date = attributes[:'schedule_move_out_date']
      end

      if attributes.key?(:'search_tag')
        self.search_tag = attributes[:'search_tag']
      end

      if attributes.key?(:'signed_date')
        self.signed_date = attributes[:'signed_date']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'tenants_opts_into_asset_protection_plan')
        self.tenants_opts_into_asset_protection_plan = attributes[:'tenants_opts_into_asset_protection_plan']
      end

      if attributes.key?(:'terminated_date')
        self.terminated_date = attributes[:'terminated_date']
      end

      if attributes.key?(:'unit_id')
        self.unit_id = attributes[:'unit_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          active == o.active &&
          addendums == o.addendums &&
          base_rent == o.base_rent &&
          building_id == o.building_id &&
          comments == o.comments &&
          contacts == o.contacts &&
          created_by == o.created_by &&
          created_date_time == o.created_date_time &&
          custom_fields == o.custom_fields &&
          end_date == o.end_date &&
          id == o.id &&
          id_number == o.id_number &&
          last_modified_by == o.last_modified_by &&
          last_modified_date_time == o.last_modified_date_time &&
          late_fee_rule == o.late_fee_rule &&
          lease_balance == o.lease_balance &&
          lease_name == o.lease_name &&
          location == o.location &&
          move_in_date == o.move_in_date &&
          move_out_date == o.move_out_date &&
          notice_given_date == o.notice_given_date &&
          payment_restriction == o.payment_restriction &&
          portfolio_id == o.portfolio_id &&
          public_assistance_program == o.public_assistance_program &&
          reason_for_leaving == o.reason_for_leaving &&
          schedule_move_out_date == o.schedule_move_out_date &&
          search_tag == o.search_tag &&
          signed_date == o.signed_date &&
          start_date == o.start_date &&
          status == o.status &&
          tenants_opts_into_asset_protection_plan == o.tenants_opts_into_asset_protection_plan &&
          terminated_date == o.terminated_date &&
          unit_id == o.unit_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [active, addendums, base_rent, building_id, comments, contacts, created_by, created_date_time, custom_fields, end_date, id, id_number, last_modified_by, last_modified_date_time, late_fee_rule, lease_balance, lease_name, location, move_in_date, move_out_date, notice_given_date, payment_restriction, portfolio_id, public_assistance_program, reason_for_leaving, schedule_move_out_date, search_tag, signed_date, start_date, status, tenants_opts_into_asset_protection_plan, terminated_date, unit_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Propertyware.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
