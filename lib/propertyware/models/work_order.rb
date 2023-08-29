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
  # Work Order
  class WorkOrder
    # Number of days that have passed since the work order was created.
    attr_accessor :age

    # Indicates if work order is approved.
    attr_accessor :approved

    # Work order approved Date.
    attr_accessor :approved_date

    # List of vendors attached to the work order.
    attr_accessor :assigned_vendors

    # Indicates if the tenant has granted your management staff access to enter his or her buildings and/or units.
    attr_accessor :authorize_enter

    # Id of the building associated with this work order.
    attr_accessor :building_id

    # This classifies the work order into a category.
    attr_accessor :category

    # Date on which the work was completed.
    attr_accessor :completed_date

    # Contract number.
    attr_accessor :contract_number

    # This indicates the estimated cost as entered by a person, the actual cost as determined by the work order bills, and the invoiced amount is the amount the owner will see on his or her statement based on the bill and markup/discount amount.
    attr_accessor :cost_estimate

    # User who created the record.
    attr_accessor :created_by

    # Date and time the record was created. (Timezone: UTC)
    attr_accessor :created_date_time

    # Custom fields.
    attr_accessor :custom_fields

    # Authorized date to enter unit.
    attr_accessor :date_to_enter

    # This is a detailed description of the problem.
    attr_accessor :description

    # Expected number of hours to complete the work order.
    attr_accessor :hour_estimate

    # Unique identifier.
    attr_accessor :id

    # User who last modified the record.
    attr_accessor :last_modified_by

    # Date and time the record was last modified. (Timezone: UTC)
    attr_accessor :last_modified_date_time

    # If the work order is attached to an occupied building or unit, this is the lease name of that lease.
    attr_accessor :lease

    # Buildings and/or units associated with this work order.
    attr_accessor :location

    # Maintenance notice defined for the building that the work order is attached to.
    attr_accessor :maintenance_notice

    # Name of the person who is responsible for managing the work order.
    attr_accessor :managed_by

    # Number assigned to this work order.
    attr_accessor :number

    # Id of the portfolio associated with this work order.
    attr_accessor :portfolio_id

    # This identifies the priority of the work order as low, medium, or high.
    attr_accessor :priority

    # This identifies the person that reported the problem, typically the tenant or owner associated with the buildings or units.
    attr_accessor :requested_by

    # List of materials required to complete the work order.
    attr_accessor :required_materials

    # Date on which the work is scheduled to be completed.
    attr_accessor :scheduled_end_date

    # Search tag name.
    attr_accessor :search_tag

    # This identifies how the problem was reported, such as telephone, in person, email, etc.
    attr_accessor :source

    # This describes the location in the buildings or units where the work is needed.
    attr_accessor :specific_location

    # Date on which the work was started.
    attr_accessor :start_date

    # Current status of the work order.
    attr_accessor :status

    # This classifies the work order into one of the following types: general, service request, turnover, inspection, estimate etc.
    attr_accessor :type

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'age' => :'age',
        :'approved' => :'approved',
        :'approved_date' => :'approvedDate',
        :'assigned_vendors' => :'assignedVendors',
        :'authorize_enter' => :'authorizeEnter',
        :'building_id' => :'buildingID',
        :'category' => :'category',
        :'completed_date' => :'completedDate',
        :'contract_number' => :'contractNumber',
        :'cost_estimate' => :'costEstimate',
        :'created_by' => :'createdBy',
        :'created_date_time' => :'createdDateTime',
        :'custom_fields' => :'customFields',
        :'date_to_enter' => :'dateToEnter',
        :'description' => :'description',
        :'hour_estimate' => :'hourEstimate',
        :'id' => :'id',
        :'last_modified_by' => :'lastModifiedBy',
        :'last_modified_date_time' => :'lastModifiedDateTime',
        :'lease' => :'lease',
        :'location' => :'location',
        :'maintenance_notice' => :'maintenanceNotice',
        :'managed_by' => :'managedBy',
        :'number' => :'number',
        :'portfolio_id' => :'portfolioID',
        :'priority' => :'priority',
        :'requested_by' => :'requestedBy',
        :'required_materials' => :'requiredMaterials',
        :'scheduled_end_date' => :'scheduledEndDate',
        :'search_tag' => :'searchTag',
        :'source' => :'source',
        :'specific_location' => :'specificLocation',
        :'start_date' => :'startDate',
        :'status' => :'status',
        :'type' => :'type'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'age' => :'Integer',
        :'approved' => :'Boolean',
        :'approved_date' => :'Date',
        :'assigned_vendors' => :'Array<BasicVendor>',
        :'authorize_enter' => :'String',
        :'building_id' => :'Integer',
        :'category' => :'String',
        :'completed_date' => :'Date',
        :'contract_number' => :'String',
        :'cost_estimate' => :'Float',
        :'created_by' => :'String',
        :'created_date_time' => :'Time',
        :'custom_fields' => :'Array<CustomField>',
        :'date_to_enter' => :'Time',
        :'description' => :'String',
        :'hour_estimate' => :'Float',
        :'id' => :'Integer',
        :'last_modified_by' => :'String',
        :'last_modified_date_time' => :'Time',
        :'lease' => :'String',
        :'location' => :'String',
        :'maintenance_notice' => :'String',
        :'managed_by' => :'String',
        :'number' => :'Integer',
        :'portfolio_id' => :'Integer',
        :'priority' => :'String',
        :'requested_by' => :'String',
        :'required_materials' => :'String',
        :'scheduled_end_date' => :'Date',
        :'search_tag' => :'String',
        :'source' => :'String',
        :'specific_location' => :'String',
        :'start_date' => :'Date',
        :'status' => :'String',
        :'type' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Propertyware::WorkOrder` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Propertyware::WorkOrder`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'age')
        self.age = attributes[:'age']
      end

      if attributes.key?(:'approved')
        self.approved = attributes[:'approved']
      end

      if attributes.key?(:'approved_date')
        self.approved_date = attributes[:'approved_date']
      end

      if attributes.key?(:'assigned_vendors')
        if (value = attributes[:'assigned_vendors']).is_a?(Array)
          self.assigned_vendors = value
        end
      end

      if attributes.key?(:'authorize_enter')
        self.authorize_enter = attributes[:'authorize_enter']
      end

      if attributes.key?(:'building_id')
        self.building_id = attributes[:'building_id']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'completed_date')
        self.completed_date = attributes[:'completed_date']
      end

      if attributes.key?(:'contract_number')
        self.contract_number = attributes[:'contract_number']
      end

      if attributes.key?(:'cost_estimate')
        self.cost_estimate = attributes[:'cost_estimate']
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

      if attributes.key?(:'date_to_enter')
        self.date_to_enter = attributes[:'date_to_enter']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'hour_estimate')
        self.hour_estimate = attributes[:'hour_estimate']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'last_modified_by')
        self.last_modified_by = attributes[:'last_modified_by']
      end

      if attributes.key?(:'last_modified_date_time')
        self.last_modified_date_time = attributes[:'last_modified_date_time']
      end

      if attributes.key?(:'lease')
        self.lease = attributes[:'lease']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'maintenance_notice')
        self.maintenance_notice = attributes[:'maintenance_notice']
      end

      if attributes.key?(:'managed_by')
        self.managed_by = attributes[:'managed_by']
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'portfolio_id')
        self.portfolio_id = attributes[:'portfolio_id']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'requested_by')
        self.requested_by = attributes[:'requested_by']
      end

      if attributes.key?(:'required_materials')
        self.required_materials = attributes[:'required_materials']
      end

      if attributes.key?(:'scheduled_end_date')
        self.scheduled_end_date = attributes[:'scheduled_end_date']
      end

      if attributes.key?(:'search_tag')
        self.search_tag = attributes[:'search_tag']
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'specific_location')
        self.specific_location = attributes[:'specific_location']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
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
      authorize_enter_validator = EnumAttributeValidator.new('String', ["NO", "ANYTIME", "SPECIFIEDTIME"])
      return false unless authorize_enter_validator.valid?(@authorize_enter)
      priority_validator = EnumAttributeValidator.new('String', ["HIGH", "MEDIUM", "LOW"])
      return false unless priority_validator.valid?(@priority)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authorize_enter Object to be assigned
    def authorize_enter=(authorize_enter)
      validator = EnumAttributeValidator.new('String', ["NO", "ANYTIME", "SPECIFIEDTIME"])
      unless validator.valid?(authorize_enter)
        fail ArgumentError, "invalid value #{ authorize_enter.inspect } for \"authorize_enter\", must be one of #{validator.allowable_values}."
      end
      @authorize_enter = authorize_enter
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] priority Object to be assigned
    def priority=(priority)
      validator = EnumAttributeValidator.new('String', ["HIGH", "MEDIUM", "LOW"])
      unless validator.valid?(priority)
        fail ArgumentError, "invalid value #{ priority.inspect } for \"priority\", must be one of #{validator.allowable_values}."
      end
      @priority = priority
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          age == o.age &&
          approved == o.approved &&
          approved_date == o.approved_date &&
          assigned_vendors == o.assigned_vendors &&
          authorize_enter == o.authorize_enter &&
          building_id == o.building_id &&
          category == o.category &&
          completed_date == o.completed_date &&
          contract_number == o.contract_number &&
          cost_estimate == o.cost_estimate &&
          created_by == o.created_by &&
          created_date_time == o.created_date_time &&
          custom_fields == o.custom_fields &&
          date_to_enter == o.date_to_enter &&
          description == o.description &&
          hour_estimate == o.hour_estimate &&
          id == o.id &&
          last_modified_by == o.last_modified_by &&
          last_modified_date_time == o.last_modified_date_time &&
          lease == o.lease &&
          location == o.location &&
          maintenance_notice == o.maintenance_notice &&
          managed_by == o.managed_by &&
          number == o.number &&
          portfolio_id == o.portfolio_id &&
          priority == o.priority &&
          requested_by == o.requested_by &&
          required_materials == o.required_materials &&
          scheduled_end_date == o.scheduled_end_date &&
          search_tag == o.search_tag &&
          source == o.source &&
          specific_location == o.specific_location &&
          start_date == o.start_date &&
          status == o.status &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [age, approved, approved_date, assigned_vendors, authorize_enter, building_id, category, completed_date, contract_number, cost_estimate, created_by, created_date_time, custom_fields, date_to_enter, description, hour_estimate, id, last_modified_by, last_modified_date_time, lease, location, maintenance_notice, managed_by, number, portfolio_id, priority, requested_by, required_materials, scheduled_end_date, search_tag, source, specific_location, start_date, status, type].hash
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
