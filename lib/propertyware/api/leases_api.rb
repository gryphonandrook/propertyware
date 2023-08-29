=begin
#Open API, powered by Propertyware

#﻿<script type=\"text/javascript\" src=\"https://buildium.atlassian.net/s/d41d8cd98f00b204e9800998ecf8427e-T/-raa8on/b/8/c95134bc67d3a521bb3f4331beb9b804/_/download/batch/com.atlassian.jira.collector.plugin.jira-issue-collector-plugin:issuecollector/com.atlassian.jira.collector.plugin.jira-issue-collector-plugin:issuecollector.js?locale=en-US&collectorId=e43cd15d\"></script>    # Introduction    Welcome to Propertyware’s API—a powerful, RESTful programming interface that lets you leverage valuable Propertyware data.    ## Account Configuration  Before you can use Propertyware’s API, you’ll need to make some tweaks to your account settings.     <br />    ### Enabling the API   In order to start creating your keys and making requests, you’ll need to enable the API.    >  **Tip:** You’ll need an administrator user role with access to ***Administration Setup > API Keys*** to set things up properly.     **Let's Begin!**     1. Sign in to your [Propertyware](https://app.propertyware.com/pw/login.jsp) account from your browser.     2. Open the ***Setup*** page    3. On the left navigation bar, expand ***Administration Setup*** and then click ***API Keys***.     If you are having issues accessing the API keys page within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    ## API Keys  Account-level API keys authenticate every request and keep things secure.     API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Propertyware API key and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.     Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys     Now that the Open API is enabled, you’ll be able to create API keys. You’re almost there!    **How to create an API key**     1. On the API Keys page, click ***Create API Key***. A modal will appear.    <p>      <img src=\"APIKey_Page.JPG\"/>  </p>    <p>      <img src=\"APIKey_New.JPG\"/>  </p>    2. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request.    3. Now, choose which pieces of Propertyware data you want this API key to have access to by selecting the corresponding radio buttons. Once finished, click **GENERATE KEY**.    4. You have successfully created an API key! The client id and secret associated to this key will be presented.     <p>      <img src=\"APIKey_Generate.JPG\"/>  </p>    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.      You have now successfully created an API key and have everything you need to  send requests to the Propertyware API!     Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping API Keys Safe](#section/Getting-Started/Keeping-API-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.    ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Propertyware data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.    ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Propertyware entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Propertyware account.  <br />  <br />    ## How to Make a Request     You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!    > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.     ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Propertyware account. Your API key is how the Propertyware API authenticates requests and ensures only you can access your data.    #### Step 2: Install a HTTP client    The Propertyware API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Propertyware API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.    #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Buildings](#operation/getBuildingsUsingGET) in your account. This will confirm your connectivity to our platform and validate the keys you created on our website. Simply follow the instructions below.    1. Open the Postman application.   2. Open the *verb* menu and select **GET**.  3. Enter the request endpoint in the field next to GET.      - Here’s the endpoint to get all buildings: https://api.propertyware.com/pw/api/rest/v1/buildings.  4. To authenticate the request, enter your `client ID`, your `secret` and your `organization iD` respectively in these request headers:      - `x-propertyware-client-id`     - `x-propertyware-client-secret`     - `x-propertyware-system-id` _(organization id)_    The organization id uniquely identifies your Propertyware account and is an additional measure to enforce proper access to the correct data. ___Your client id and secret pair will only work with the organization it belongs to___.    Your full request should look similar to the image below.  <kbd><img src=\"request_example.png\" /></kbd>    5. Review the parameters of your request on last time. Once finished, click **Send**.    6. If successful, you should see a JSON response and a `200` HTTP status code. Congratulations! You've connected to the Propertyware API.    You now have the knowledge required to make requests for any of our resources.    If you've received an error response please review the JSON response message for a description of how to resolve the issue. You can also see more information about HTTP status codes in the [Response Codes](#section/API-Overview/Response-Codes) section. If you are still having trouble making a request after reviewing these sections please submit a [Support](#section/API-Overview/Support) request.    # API Overview  The Propertyware API is built upon standard REST conventions. It's designed to use consistent resource-oriented URLs, accept and return JSON-encoded messages, and use standard HTTP status codes and verbs.    ## Base URL  The base URL for production environment API requests is: `https://api.propertyware.com/pw/api/v1/rest`    In order to ensure all requests and responses are secure between the API consumer and Propertyware servers, requests must be made using the `https` protocol. Any requests not made with the `https` protocol will be refused by the Propertyware API platform.     > **Note:** URL paths are case-sensitive to stay consistent with common REST standards. If your request doesn’t align with the documented URL path, you’ll receive a `404` response code reminding you of this constraint.    ## API Versioning  The Propertyware API is version controlled. Versioning ensures backwards-incompatible changes to the API don’t impact any existing integrations.    Propertyware uses only a major version nomenclature to manage changes. The current version of the Propertyware API is version 1. By specifying a version in the resource request URL, you'll get expected responses regardless of future changes to the API. Here's an example of calling version 1 of the retrieve all leases resource:    `https://api.propertyware.com/pw/api/rest/v1/leases`    Any request submitted without the version in the URL path will result in a `404` error response code.     ### Releasing Changes to the API  The Propertyware API will continue to evolve to ensure it meets the needs of our customers. Changes will be defined as either backwards-compatible or backwards-incompatible.     We’ll provide advance notice for all API releases–regardless of the type of modifications being made.     #### Backward-compatible Changes  Backward-compatible changes are modifications to the API that shouldn't impact existing integrations. They'll apply to the current version of the API. Simply put: you won’t need to change the version to consume new changes like these.     It's important as you develop against the Propertyware API that you ensure  these types of changes don't impact your integration. Here's are examples of backward-compatible modifications.     * Adding new API resources and/or endpoints.  * Adding new optional request parameters to existing API methods.  * Adding new properties to existing API responses and non-required properties for request messages.  * Changing property order in existing API responses.    All backward-compatible changes to the API will be documented in the [Changelog](#section/Changelog).    #### Backwards-incompatible Changes    When backwards-incompatible changes to the API occur, a new version of the API will be released. You’ll need to update the URL path  to consume resources under the new API version.     Backwards-incompatible changes include:    * Removing a property from a request and/or response message.  * Changing the name of a property in a message.  * Adding a required parameter to a request message.  * Changing existing enumeration values.    New versions of the API will have full reference documentation and an upgrade guide.     ## Authentication    The Propertyware API uses API key’s client IDs and secrets to authenticate requests.     An organization ID, an API key client ID and secret must be passed in every request header using the following parameters:     - `x-propertyware-client-id`  - `x-propertyware-client-secret`  - `x-propertyware-system-id`    Failing to provide both of them in the request header will cause the API to return a `401` HTTP status code.  <!--  ## Rate Limiting (FUTURE)  Rate limits help us ensure consistent and reliable performance for all users, even during peak loads. That’s why we limit clients to **10 concurrent requests per second**.    If your request rate violates that limit, a response code of `429` is returned. Simply retry the request after a short interval (~200ms).  -->    ## Bulk Request Options  All top-level API resources support bulk fetches. For instance, you can retrieve all [Portfolios](#operation/getPortfoliosUsingGET). These resources also allow for filtering criteria. Each resource has descriptions of the filter criteria available.    In addition to filtering, our API gives you the ability to control the returned data’s pagination and the sort order.     ### Pagination  Endpoints that return result sets allow for pagination using `limit` and `offset` request parameters to reduce the amount of data returned.    The `limit` request parameter will cap the number of results that come back in the response. If you don't specify a `limit` value, a **default of 100 results** are returned. The maximum `limit` value is 500. If a `limit` value is specified greater than 500, it will be overridden to the default to 500.     The `offset` request parameter indicates the record position within the resultset to start at when returning the results. The `offset` is zero-based and is inclusive. If no `offset` value is submitted it will default to 0.       The total resultset count is returned in the HTTP Header `X-Total-Count`      #### Pagination Example    As an example, let's say we make a request to retrieve all rental properties with no paging parameters. Our response indicates in the `X-Total-Count` header that there are 150 total rental properties. We want to get only the last 50 results so we would submit a request with the `offset` set to 100 and the `limit` set to 50.    > **Note:** The `limit` and `offset` parameter names are case-sensitive. If they aren't formatted correctly, the API will return a `404` HTTP status code.    ### Sorting Results    You can specify the sort order of returned data by assigning properties from the returned object to the `orderby` parameter in the querystring. For example:  ```  orderby=name  ```  By default, the sort is performed in ascending order. To specify sort order, use \"asc\" for ascending or \"desc\" for descending. For example:  ```  orderby=name desc  ```  Additionally, you can sort by multiple properties by comma separating the properties. For example:  ```  orderby=abbreviation asc,name desc  ```    > **Note:** While the `orderby` parameter is case-sensitive, the properties specified in the `orderby` value aren't.     ## Response Codes  The Propertyware API supports standard HTTP status codes.    |Response Code          |Description  |  |--|--|  |200 OK | Everything worked as expected. |  |400 Bad Request | The request was unacceptable, often due to missing a required parameter.|  |401 Unauthorized|The API client ID and secret weren’t provided or they’re no longer valid. Be sure that the client ID and secret combination are correct and they are still active.|  |403 Forbidden|The API key doesn't have permission to perform the request. This could be due to authorization for the given endpoint or an inability to access given entities within the platform (e.g. properties).  |404 Not Found|The requested resource doesn't exist.|  |415 Unsupported Media Type |Ensure you have the appropriate content-type header value set on your request. Each resource is documented with media type(s) that are accepted.|  |429 Too Many Requests |Too many requests against the API too quickly. We recommend an exponential backoff of your requests.|  |500 and above - Server Errors|Something went wrong on Propertyware's end. Review the JSON response message for more details about the error.|    ## API Date Format  * For all request and response date fields allowing ISO date format: YYYY-MM-DD (e.g.2019-08-24).  * For all request and response dateAndTime fields format is allowing: YYYY-MM-dd'T'HH:mm:ssXXX (e.g.2022-06-28T08:47:13Z).    ## Support  If you are unable to resolve your issue after reviewing the API documentation our support team can assist you.    # Changelog  ### 2023-08-28  * Update a document    ### 2023-07-11  * Delete a document    ### 2023-07-11  * Retrieve all documents  * Retrieve a document  * Download a document    ### 2023-06-10  * Lease contacts are included in Retrieve all leases API response  * Lease contacts are included in Retrieve a lease API response    ### 2023-04-24  * Bulk Insertion: Prospects  * Bulk Insertion: Bill Payments    ### 2023-04-11    * Bulk Insertion: Portfolios  * Bulk Insertion: Buildings  * Bulk Insertion: Units    ### 2023-03-19    * Bulk insertion: contacts    ### 2023-03-08    * Bulk insertion: bills    ### 2023-01-24    * Custom fields in \"Get all\" endpoints  * Prospect creation  * Bill removals      ### 2022-10-25    * API Read operations for non-financial data    ### 2022-09-21    * API Read operations available 

The version of the OpenAPI document: 1.0
Contact: support@propertyware.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module Propertyware
  class LeasesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add comment to a lease conversation (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Adds comment to a lease conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 
    # @param lease_id [Integer] Lease ID
    # @param conversation_id [Integer] Conversation ID
    # @param save_comment [SaveComment] saveComment
    # @param [Hash] opts the optional parameters
    # @return [Comment]
    def add_comment_to_lease_conversation(lease_id, conversation_id, save_comment, opts = {})
      data, _status_code, _headers = add_comment_to_lease_conversation_with_http_info(lease_id, conversation_id, save_comment, opts)
      data
    end

    # Add comment to a lease conversation (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Adds comment to a lease conversation.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param lease_id [Integer] Lease ID
    # @param conversation_id [Integer] Conversation ID
    # @param save_comment [SaveComment] saveComment
    # @param [Hash] opts the optional parameters
    # @return [Array<(Comment, Integer, Hash)>] Comment data, response status code and response headers
    def add_comment_to_lease_conversation_with_http_info(lease_id, conversation_id, save_comment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.add_comment_to_lease_conversation ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.add_comment_to_lease_conversation"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling LeasesApi.add_comment_to_lease_conversation"
      end
      # verify the required parameter 'save_comment' is set
      if @api_client.config.client_side_validation && save_comment.nil?
        fail ArgumentError, "Missing the required parameter 'save_comment' when calling LeasesApi.add_comment_to_lease_conversation"
      end
      # resource path
      local_var_path = '/leases/{leaseID}/conversations/{conversationID}/comments'.sub('{' + 'leaseID' + '}', CGI.escape(lease_id.to_s)).sub('{' + 'conversationID' + '}', CGI.escape(conversation_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_comment)

      # return_type
      return_type = opts[:debug_return_type] || 'Comment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.add_comment_to_lease_conversation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#add_comment_to_lease_conversation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a lease journal entry (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates a lease journal entry.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 
    # @param save_lease_journal_entry [SaveLeaseJournalEntry] saveLeaseJournalEntry
    # @param [Hash] opts the optional parameters
    # @return [JournalEntry]
    def create_journal_entry(save_lease_journal_entry, opts = {})
      data, _status_code, _headers = create_journal_entry_with_http_info(save_lease_journal_entry, opts)
      data
    end

    # Create a lease journal entry (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Creates a lease journal entry.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param save_lease_journal_entry [SaveLeaseJournalEntry] saveLeaseJournalEntry
    # @param [Hash] opts the optional parameters
    # @return [Array<(JournalEntry, Integer, Hash)>] JournalEntry data, response status code and response headers
    def create_journal_entry_with_http_info(save_lease_journal_entry, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_journal_entry ...'
      end
      # verify the required parameter 'save_lease_journal_entry' is set
      if @api_client.config.client_side_validation && save_lease_journal_entry.nil?
        fail ArgumentError, "Missing the required parameter 'save_lease_journal_entry' when calling LeasesApi.create_journal_entry"
      end
      # resource path
      local_var_path = '/leases/journalentries'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_lease_journal_entry)

      # return_type
      return_type = opts[:debug_return_type] || 'JournalEntry'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_journal_entry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_journal_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a lease (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates a new lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 
    # @param save_lease [SaveLease] saveLease
    # @param [Hash] opts the optional parameters
    # @return [Lease]
    def create_lease(save_lease, opts = {})
      data, _status_code, _headers = create_lease_with_http_info(save_lease, opts)
      data
    end

    # Create a lease (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Creates a new lease.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param save_lease [SaveLease] saveLease
    # @param [Hash] opts the optional parameters
    # @return [Array<(Lease, Integer, Hash)>] Lease data, response status code and response headers
    def create_lease_with_http_info(save_lease, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease ...'
      end
      # verify the required parameter 'save_lease' is set
      if @api_client.config.client_side_validation && save_lease.nil?
        fail ArgumentError, "Missing the required parameter 'save_lease' when calling LeasesApi.create_lease"
      end
      # resource path
      local_var_path = '/leases'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_lease)

      # return_type
      return_type = opts[:debug_return_type] || 'Lease'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a lease adjustment (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates a lease adjustment.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 
    # @param save_adjustment [SaveAdjustment] saveAdjustment
    # @param [Hash] opts the optional parameters
    # @return [ChargeTx]
    def create_lease_adjustment(save_adjustment, opts = {})
      data, _status_code, _headers = create_lease_adjustment_with_http_info(save_adjustment, opts)
      data
    end

    # Create a lease adjustment (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Creates a lease adjustment.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param save_adjustment [SaveAdjustment] saveAdjustment
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChargeTx, Integer, Hash)>] ChargeTx data, response status code and response headers
    def create_lease_adjustment_with_http_info(save_adjustment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease_adjustment ...'
      end
      # verify the required parameter 'save_adjustment' is set
      if @api_client.config.client_side_validation && save_adjustment.nil?
        fail ArgumentError, "Missing the required parameter 'save_adjustment' when calling LeasesApi.create_lease_adjustment"
      end
      # resource path
      local_var_path = '/leases/adjustments'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_adjustment)

      # return_type
      return_type = opts[:debug_return_type] || 'ChargeTx'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease_adjustment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease_adjustment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a lease charge (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates a lease charge.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 
    # @param save_charge [SaveCharge] saveCharge
    # @param [Hash] opts the optional parameters
    # @return [ChargeTx]
    def create_lease_charge(save_charge, opts = {})
      data, _status_code, _headers = create_lease_charge_with_http_info(save_charge, opts)
      data
    end

    # Create a lease charge (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Creates a lease charge.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param save_charge [SaveCharge] saveCharge
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChargeTx, Integer, Hash)>] ChargeTx data, response status code and response headers
    def create_lease_charge_with_http_info(save_charge, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease_charge ...'
      end
      # verify the required parameter 'save_charge' is set
      if @api_client.config.client_side_validation && save_charge.nil?
        fail ArgumentError, "Missing the required parameter 'save_charge' when calling LeasesApi.create_lease_charge"
      end
      # resource path
      local_var_path = '/leases/charges'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_charge)

      # return_type
      return_type = opts[:debug_return_type] || 'ChargeTx'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease_charge",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease_charge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create lease charges in bulk (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates lease charges in bulk.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 
    # @param save_charge [Array<SaveCharge>] saveCharge
    # @param [Hash] opts the optional parameters
    # @return [Array<RESTAPIBulkSuccessResponse>]
    def create_lease_charges(save_charge, opts = {})
      data, _status_code, _headers = create_lease_charges_with_http_info(save_charge, opts)
      data
    end

    # Create lease charges in bulk (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Creates lease charges in bulk.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param save_charge [Array<SaveCharge>] saveCharge
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RESTAPIBulkSuccessResponse>, Integer, Hash)>] Array<RESTAPIBulkSuccessResponse> data, response status code and response headers
    def create_lease_charges_with_http_info(save_charge, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease_charges ...'
      end
      # verify the required parameter 'save_charge' is set
      if @api_client.config.client_side_validation && save_charge.nil?
        fail ArgumentError, "Missing the required parameter 'save_charge' when calling LeasesApi.create_lease_charges"
      end
      # resource path
      local_var_path = '/leases/charges/bulk'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_charge)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<RESTAPIBulkSuccessResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease_charges",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease_charges\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a lease conversation (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates a specific lease conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 
    # @param lease_id [Integer] Lease ID
    # @param save_conversation [SaveConversation] saveConversation
    # @param [Hash] opts the optional parameters
    # @return [Conversation]
    def create_lease_conversation(lease_id, save_conversation, opts = {})
      data, _status_code, _headers = create_lease_conversation_with_http_info(lease_id, save_conversation, opts)
      data
    end

    # Create a lease conversation (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Creates a specific lease conversation.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param lease_id [Integer] Lease ID
    # @param save_conversation [SaveConversation] saveConversation
    # @param [Hash] opts the optional parameters
    # @return [Array<(Conversation, Integer, Hash)>] Conversation data, response status code and response headers
    def create_lease_conversation_with_http_info(lease_id, save_conversation, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease_conversation ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.create_lease_conversation"
      end
      # verify the required parameter 'save_conversation' is set
      if @api_client.config.client_side_validation && save_conversation.nil?
        fail ArgumentError, "Missing the required parameter 'save_conversation' when calling LeasesApi.create_lease_conversation"
      end
      # resource path
      local_var_path = '/leases/{leaseID}/conversations'.sub('{' + 'leaseID' + '}', CGI.escape(lease_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_conversation)

      # return_type
      return_type = opts[:debug_return_type] || 'Conversation'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease_conversation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease_conversation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a lease discount (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates a lease discount.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 
    # @param save_discount [SaveDiscount] saveDiscount
    # @param [Hash] opts the optional parameters
    # @return [Discount]
    def create_lease_discount(save_discount, opts = {})
      data, _status_code, _headers = create_lease_discount_with_http_info(save_discount, opts)
      data
    end

    # Create a lease discount (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Creates a lease discount.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param save_discount [SaveDiscount] saveDiscount
    # @param [Hash] opts the optional parameters
    # @return [Array<(Discount, Integer, Hash)>] Discount data, response status code and response headers
    def create_lease_discount_with_http_info(save_discount, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease_discount ...'
      end
      # verify the required parameter 'save_discount' is set
      if @api_client.config.client_side_validation && save_discount.nil?
        fail ArgumentError, "Missing the required parameter 'save_discount' when calling LeasesApi.create_lease_discount"
      end
      # resource path
      local_var_path = '/leases/discounts'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_discount)

      # return_type
      return_type = opts[:debug_return_type] || 'Discount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease_discount",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease_discount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a lease payment (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates a lease payment.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 
    # @param save_payment [SavePayment] savePayment
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def create_lease_payment(save_payment, opts = {})
      data, _status_code, _headers = create_lease_payment_with_http_info(save_payment, opts)
      data
    end

    # Create a lease payment (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Creates a lease payment.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param save_payment [SavePayment] savePayment
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Integer, Hash)>] Payment data, response status code and response headers
    def create_lease_payment_with_http_info(save_payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease_payment ...'
      end
      # verify the required parameter 'save_payment' is set
      if @api_client.config.client_side_validation && save_payment.nil?
        fail ArgumentError, "Missing the required parameter 'save_payment' when calling LeasesApi.create_lease_payment"
      end
      # resource path
      local_var_path = '/leases/payments'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_payment)

      # return_type
      return_type = opts[:debug_return_type] || 'Payment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a lease refund (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates a lease refund.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 
    # @param save_refund [SaveRefund] saveRefund
    # @param [Hash] opts the optional parameters
    # @return [Refund]
    def create_lease_refund(save_refund, opts = {})
      data, _status_code, _headers = create_lease_refund_with_http_info(save_refund, opts)
      data
    end

    # Create a lease refund (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Creates a lease refund.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param save_refund [SaveRefund] saveRefund
    # @param [Hash] opts the optional parameters
    # @return [Array<(Refund, Integer, Hash)>] Refund data, response status code and response headers
    def create_lease_refund_with_http_info(save_refund, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease_refund ...'
      end
      # verify the required parameter 'save_refund' is set
      if @api_client.config.client_side_validation && save_refund.nil?
        fail ArgumentError, "Missing the required parameter 'save_refund' when calling LeasesApi.create_lease_refund"
      end
      # resource path
      local_var_path = '/leases/refunds'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_refund)

      # return_type
      return_type = opts[:debug_return_type] || 'Refund'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease_refund",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease_refund\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a lease (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Deletes a lease<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Delete</code> 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @return [ResponseEntity]
    def delete_lease(lease_id, opts = {})
      data, _status_code, _headers = delete_lease_with_http_info(lease_id, opts)
      data
    end

    # Delete a lease (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Deletes a lease&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Delete&lt;/code&gt; 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponseEntity, Integer, Hash)>] ResponseEntity data, response status code and response headers
    def delete_lease_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.delete_lease ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.delete_lease"
      end
      # resource path
      local_var_path = '/leases/{leaseID}'.sub('{' + 'leaseID' + '}', CGI.escape(lease_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResponseEntity'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.delete_lease",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#delete_lease\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a lease conversation (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Deletes a specific lease conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Delete</code> 
    # @param lease_id [Integer] Lease ID
    # @param conversation_id [Integer] Conversation ID
    # @param [Hash] opts the optional parameters
    # @return [ResponseEntity]
    def delete_lease_conversation(lease_id, conversation_id, opts = {})
      data, _status_code, _headers = delete_lease_conversation_with_http_info(lease_id, conversation_id, opts)
      data
    end

    # Delete a lease conversation (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Deletes a specific lease conversation.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Delete&lt;/code&gt; 
    # @param lease_id [Integer] Lease ID
    # @param conversation_id [Integer] Conversation ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponseEntity, Integer, Hash)>] ResponseEntity data, response status code and response headers
    def delete_lease_conversation_with_http_info(lease_id, conversation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.delete_lease_conversation ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.delete_lease_conversation"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling LeasesApi.delete_lease_conversation"
      end
      # resource path
      local_var_path = '/leases/{leaseID}/conversations/{conversationID}'.sub('{' + 'leaseID' + '}', CGI.escape(lease_id.to_s)).sub('{' + 'conversationID' + '}', CGI.escape(conversation_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResponseEntity'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.delete_lease_conversation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#delete_lease_conversation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all lease statuses (BETA)
    # <p class=\"betaWarning\"><b>Note: </b>This operation is still in beta and might be subject to breaking changes. Production integrations should be avoided at this stage.</p> Retrieves a list of all lease statuses<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 
    # @param [Hash] opts the optional parameters
    # @return [Array<LeaseStatus>]
    def get_all_lease_statuses(opts = {})
      data, _status_code, _headers = get_all_lease_statuses_with_http_info(opts)
      data
    end

    # Retrieve all lease statuses (BETA)
    # &lt;p class&#x3D;\&quot;betaWarning\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;This operation is still in beta and might be subject to breaking changes. Production integrations should be avoided at this stage.&lt;/p&gt; Retrieves a list of all lease statuses&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<LeaseStatus>, Integer, Hash)>] Array<LeaseStatus> data, response status code and response headers
    def get_all_lease_statuses_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_all_lease_statuses ...'
      end
      # resource path
      local_var_path = '/leases/statuses'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<LeaseStatus>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_all_lease_statuses",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_all_lease_statuses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a lease
    # Retrieves a specific lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_custom_fields includeCustomFields (default to true)
    # @return [Lease]
    def get_lease(lease_id, opts = {})
      data, _status_code, _headers = get_lease_with_http_info(lease_id, opts)
      data
    end

    # Retrieve a lease
    # Retrieves a specific lease.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_custom_fields includeCustomFields (default to true)
    # @return [Array<(Lease, Integer, Hash)>] Lease data, response status code and response headers
    def get_lease_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease"
      end
      # resource path
      local_var_path = '/leases/{leaseId}'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeCustomFields'] = opts[:'include_custom_fields'] if !opts[:'include_custom_fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Lease'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all the adjustments
    # Retrieves a list of adjustments.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">GL ACCOUNTS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>leaseid</code>, <code>postdate</code>, <code>id</code>
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [Date] :post_date_start Filters results to any transaction with a start date on or after the date specified.
    # @option opts [Date] :post_date_end Filters results to any transaction with a start date on or prior to the date specified.
    # @option opts [Integer] :portfolio_id Filters results associated with a specific portfolio.
    # @option opts [Integer] :lease_id Filters results with Lease ID.
    # @option opts [String] :status Filters results to with Lease Status.
    # @return [Array<Transaction>]
    def get_lease_adjustments(opts = {})
      data, _status_code, _headers = get_lease_adjustments_with_http_info(opts)
      data
    end

    # Retrieve all the adjustments
    # Retrieves a list of adjustments.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;GL ACCOUNTS&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; &lt;br/&gt;&lt;br/&gt;&lt;b&gt;Sortable by:&lt;/b&gt; &lt;code&gt;leaseid&lt;/code&gt;, &lt;code&gt;postdate&lt;/code&gt;, &lt;code&gt;id&lt;/code&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [Date] :post_date_start Filters results to any transaction with a start date on or after the date specified.
    # @option opts [Date] :post_date_end Filters results to any transaction with a start date on or prior to the date specified.
    # @option opts [Integer] :portfolio_id Filters results associated with a specific portfolio.
    # @option opts [Integer] :lease_id Filters results with Lease ID.
    # @option opts [String] :status Filters results to with Lease Status.
    # @return [Array<(Array<Transaction>, Integer, Hash)>] Array<Transaction> data, response status code and response headers
    def get_lease_adjustments_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_adjustments ...'
      end
      # resource path
      local_var_path = '/leases/adjustments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'lastModifiedDateTimeStart'] = opts[:'last_modified_date_time_start'] if !opts[:'last_modified_date_time_start'].nil?
      query_params[:'lastModifiedDateTimeEnd'] = opts[:'last_modified_date_time_end'] if !opts[:'last_modified_date_time_end'].nil?
      query_params[:'orderby'] = opts[:'orderby'] if !opts[:'orderby'].nil?
      query_params[:'postDateStart'] = opts[:'post_date_start'] if !opts[:'post_date_start'].nil?
      query_params[:'postDateEnd'] = opts[:'post_date_end'] if !opts[:'post_date_end'].nil?
      query_params[:'portfolioID'] = opts[:'portfolio_id'] if !opts[:'portfolio_id'].nil?
      query_params[:'leaseID'] = opts[:'lease_id'] if !opts[:'lease_id'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Transaction>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_adjustments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_adjustments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all lease auto charges
    # Retrieves all the auto charges of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @return [Array<Charge>]
    def get_lease_auto_charges(lease_id, opts = {})
      data, _status_code, _headers = get_lease_auto_charges_with_http_info(lease_id, opts)
      data
    end

    # Retrieve all lease auto charges
    # Retrieves all the auto charges of a lease.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Charge>, Integer, Hash)>] Array<Charge> data, response status code and response headers
    def get_lease_auto_charges_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_auto_charges ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_auto_charges"
      end
      # resource path
      local_var_path = '/leases/{leaseId}/autocharges'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Charge>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_auto_charges",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_auto_charges\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all lease auto ePayments (BETA)
    # <p class=\"betaWarning\"><b>Note: </b>This operation is still in beta and might be subject to breaking changes. Production integrations should be avoided at this stage.</p> Retrieves all the auto ePayments of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @return [AutoPayment]
    def get_lease_auto_e_payments(lease_id, opts = {})
      data, _status_code, _headers = get_lease_auto_e_payments_with_http_info(lease_id, opts)
      data
    end

    # Retrieve all lease auto ePayments (BETA)
    # &lt;p class&#x3D;\&quot;betaWarning\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;This operation is still in beta and might be subject to breaking changes. Production integrations should be avoided at this stage.&lt;/p&gt; Retrieves all the auto ePayments of a lease.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(AutoPayment, Integer, Hash)>] AutoPayment data, response status code and response headers
    def get_lease_auto_e_payments_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_auto_e_payments ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_auto_e_payments"
      end
      # resource path
      local_var_path = '/leases/{leaseId}/autoepayments'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AutoPayment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_auto_e_payments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_auto_e_payments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all lease auto journal entries (BETA)
    # <p class=\"betaWarning\"><b>Note: </b>This operation is still in beta and might be subject to breaking changes. Production integrations should be avoided at this stage.</p> Retrieves all the auto journal entries of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @return [AutoJournalEntry]
    def get_lease_auto_journal_entries(lease_id, opts = {})
      data, _status_code, _headers = get_lease_auto_journal_entries_with_http_info(lease_id, opts)
      data
    end

    # Retrieve all lease auto journal entries (BETA)
    # &lt;p class&#x3D;\&quot;betaWarning\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;This operation is still in beta and might be subject to breaking changes. Production integrations should be avoided at this stage.&lt;/p&gt; Retrieves all the auto journal entries of a lease.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(AutoJournalEntry, Integer, Hash)>] AutoJournalEntry data, response status code and response headers
    def get_lease_auto_journal_entries_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_auto_journal_entries ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_auto_journal_entries"
      end
      # resource path
      local_var_path = '/leases/{leaseId}/autojournalentries'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AutoJournalEntry'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_auto_journal_entries",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_auto_journal_entries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all the lease charges
    # Retrieves a list of lease charges.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>leaseid</code>, <code>postdate</code>, <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [Date] :post_date_start Filters results to any transaction with a start date on or after the date specified.
    # @option opts [Date] :post_date_end Filters results to any transaction with a start date on or prior to the date specified.
    # @option opts [Integer] :portfolio_id Filters results associated with a specific portfolio.
    # @option opts [Integer] :lease_id Filters results with Lease ID.
    # @option opts [String] :status Filters results to with Lease Status.
    # @return [Array<ChargeTx>]
    def get_lease_charges(opts = {})
      data, _status_code, _headers = get_lease_charges_with_http_info(opts)
      data
    end

    # Retrieve all the lease charges
    # Retrieves a list of lease charges.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; &lt;br/&gt;&lt;br/&gt;&lt;b&gt;Sortable by:&lt;/b&gt; &lt;code&gt;leaseid&lt;/code&gt;, &lt;code&gt;postdate&lt;/code&gt;, &lt;code&gt;createddate&lt;/code&gt;, &lt;code&gt;lastmodifieddatetime&lt;/code&gt;, &lt;code&gt;id&lt;/code&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [Date] :post_date_start Filters results to any transaction with a start date on or after the date specified.
    # @option opts [Date] :post_date_end Filters results to any transaction with a start date on or prior to the date specified.
    # @option opts [Integer] :portfolio_id Filters results associated with a specific portfolio.
    # @option opts [Integer] :lease_id Filters results with Lease ID.
    # @option opts [String] :status Filters results to with Lease Status.
    # @return [Array<(Array<ChargeTx>, Integer, Hash)>] Array<ChargeTx> data, response status code and response headers
    def get_lease_charges_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_charges ...'
      end
      # resource path
      local_var_path = '/leases/charges'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'lastModifiedDateTimeStart'] = opts[:'last_modified_date_time_start'] if !opts[:'last_modified_date_time_start'].nil?
      query_params[:'lastModifiedDateTimeEnd'] = opts[:'last_modified_date_time_end'] if !opts[:'last_modified_date_time_end'].nil?
      query_params[:'orderby'] = opts[:'orderby'] if !opts[:'orderby'].nil?
      query_params[:'postDateStart'] = opts[:'post_date_start'] if !opts[:'post_date_start'].nil?
      query_params[:'postDateEnd'] = opts[:'post_date_end'] if !opts[:'post_date_end'].nil?
      query_params[:'portfolioID'] = opts[:'portfolio_id'] if !opts[:'portfolio_id'].nil?
      query_params[:'leaseID'] = opts[:'lease_id'] if !opts[:'lease_id'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ChargeTx>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_charges",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_charges\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all lease contacts
    # Retrieves all the contacts of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_contact_custom_fields_in_the_response_ Include contact custom fields in the response.
    # @return [Array<Contact>]
    def get_lease_contacts(lease_id, opts = {})
      data, _status_code, _headers = get_lease_contacts_with_http_info(lease_id, opts)
      data
    end

    # Retrieve all lease contacts
    # Retrieves all the contacts of a lease.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_contact_custom_fields_in_the_response_ Include contact custom fields in the response.
    # @return [Array<(Array<Contact>, Integer, Hash)>] Array<Contact> data, response status code and response headers
    def get_lease_contacts_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_contacts ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_contacts"
      end
      # resource path
      local_var_path = '/leases/{leaseId}/contacts'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'Include contact custom fields in the response.'] = opts[:'include_contact_custom_fields_in_the_response_'] if !opts[:'include_contact_custom_fields_in_the_response_'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Contact>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_contacts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a lease conversation
    # Retrieves a specific lease conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 
    # @param lease_id [Integer] Lease ID
    # @param conversation_id [Integer] Conversation ID
    # @param [Hash] opts the optional parameters
    # @return [Conversation]
    def get_lease_conversation(lease_id, conversation_id, opts = {})
      data, _status_code, _headers = get_lease_conversation_with_http_info(lease_id, conversation_id, opts)
      data
    end

    # Retrieve a lease conversation
    # Retrieves a specific lease conversation.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; 
    # @param lease_id [Integer] Lease ID
    # @param conversation_id [Integer] Conversation ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Conversation, Integer, Hash)>] Conversation data, response status code and response headers
    def get_lease_conversation_with_http_info(lease_id, conversation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_conversation ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_conversation"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling LeasesApi.get_lease_conversation"
      end
      # resource path
      local_var_path = '/leases/{leaseID}/conversations/{conversationID}'.sub('{' + 'leaseID' + '}', CGI.escape(lease_id.to_s)).sub('{' + 'conversationID' + '}', CGI.escape(conversation_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Conversation'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_conversation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_conversation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all lease conversations
    # Retrieves all the conversations of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [String] :type Filters results by the conversation type.
    # @return [Array<Conversation>]
    def get_lease_conversations(lease_id, opts = {})
      data, _status_code, _headers = get_lease_conversations_with_http_info(lease_id, opts)
      data
    end

    # Retrieve all lease conversations
    # Retrieves all the conversations of a lease.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; &lt;br/&gt;&lt;br/&gt;&lt;b&gt;Sortable by:&lt;/b&gt; &lt;code&gt;createddate&lt;/code&gt;, &lt;code&gt;lastmodifieddatetime&lt;/code&gt;, &lt;code&gt;id&lt;/code&gt;
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [String] :type Filters results by the conversation type.
    # @return [Array<(Array<Conversation>, Integer, Hash)>] Array<Conversation> data, response status code and response headers
    def get_lease_conversations_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_conversations ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_conversations"
      end
      allowable_values = ["MANAGEMENT_TEAM", "OWNER", "TENANT"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/leases/{leaseID}/conversations'.sub('{' + 'leaseID' + '}', CGI.escape(lease_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'lastModifiedDateTimeStart'] = opts[:'last_modified_date_time_start'] if !opts[:'last_modified_date_time_start'].nil?
      query_params[:'lastModifiedDateTimeEnd'] = opts[:'last_modified_date_time_end'] if !opts[:'last_modified_date_time_end'].nil?
      query_params[:'orderby'] = opts[:'orderby'] if !opts[:'orderby'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Conversation>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_conversations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_conversations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all the credit memos
    # Retrieves a list of credit memos.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>leaseid</code>, <code>postdate</code>, <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [Date] :post_date_start Filters results to any transaction with a start date on or after the date specified.
    # @option opts [Date] :post_date_end Filters results to any transaction with a start date on or prior to the date specified.
    # @option opts [Integer] :portfolio_id Filters results associated with a specific portfolio.
    # @option opts [Integer] :lease_id Filters results with Lease ID.
    # @option opts [String] :status Filters results to with Lease Status.
    # @return [Array<CreditMemo>]
    def get_lease_credit_memos(opts = {})
      data, _status_code, _headers = get_lease_credit_memos_with_http_info(opts)
      data
    end

    # Retrieve all the credit memos
    # Retrieves a list of credit memos.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; &lt;br/&gt;&lt;br/&gt;&lt;b&gt;Sortable by:&lt;/b&gt; &lt;code&gt;leaseid&lt;/code&gt;, &lt;code&gt;postdate&lt;/code&gt;, &lt;code&gt;createddate&lt;/code&gt;, &lt;code&gt;lastmodifieddatetime&lt;/code&gt;, &lt;code&gt;id&lt;/code&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [Date] :post_date_start Filters results to any transaction with a start date on or after the date specified.
    # @option opts [Date] :post_date_end Filters results to any transaction with a start date on or prior to the date specified.
    # @option opts [Integer] :portfolio_id Filters results associated with a specific portfolio.
    # @option opts [Integer] :lease_id Filters results with Lease ID.
    # @option opts [String] :status Filters results to with Lease Status.
    # @return [Array<(Array<CreditMemo>, Integer, Hash)>] Array<CreditMemo> data, response status code and response headers
    def get_lease_credit_memos_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_credit_memos ...'
      end
      # resource path
      local_var_path = '/leases/creditmemos'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'lastModifiedDateTimeStart'] = opts[:'last_modified_date_time_start'] if !opts[:'last_modified_date_time_start'].nil?
      query_params[:'lastModifiedDateTimeEnd'] = opts[:'last_modified_date_time_end'] if !opts[:'last_modified_date_time_end'].nil?
      query_params[:'orderby'] = opts[:'orderby'] if !opts[:'orderby'].nil?
      query_params[:'postDateStart'] = opts[:'post_date_start'] if !opts[:'post_date_start'].nil?
      query_params[:'postDateEnd'] = opts[:'post_date_end'] if !opts[:'post_date_end'].nil?
      query_params[:'portfolioID'] = opts[:'portfolio_id'] if !opts[:'portfolio_id'].nil?
      query_params[:'leaseID'] = opts[:'lease_id'] if !opts[:'lease_id'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<CreditMemo>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_credit_memos",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_credit_memos\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all lease custom fields
    # Retrieves all the custom fields of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @return [Array<CustomField>]
    def get_lease_custom_fields(lease_id, opts = {})
      data, _status_code, _headers = get_lease_custom_fields_with_http_info(lease_id, opts)
      data
    end

    # Retrieve all lease custom fields
    # Retrieves all the custom fields of a lease.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<CustomField>, Integer, Hash)>] Array<CustomField> data, response status code and response headers
    def get_lease_custom_fields_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_custom_fields ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_custom_fields"
      end
      # resource path
      local_var_path = '/leases/{leaseId}/customfields'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<CustomField>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_custom_fields",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_custom_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all the lease discounts
    # Retrieves a list of lease discounts<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>leaseid</code>, <code>postdate</code>, <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [Integer] :lease_id Filters results to any LeaseID.
    # @option opts [Date] :post_date_start Filters results to any discount with a start date on or after the date specified.
    # @option opts [Date] :post_date_end Filters results to any discount with a start date on or prior to the date specified.
    # @return [Array<Transaction>]
    def get_lease_discounts(opts = {})
      data, _status_code, _headers = get_lease_discounts_with_http_info(opts)
      data
    end

    # Retrieve all the lease discounts
    # Retrieves a list of lease discounts&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; &lt;br/&gt;&lt;br/&gt;&lt;b&gt;Sortable by:&lt;/b&gt; &lt;code&gt;leaseid&lt;/code&gt;, &lt;code&gt;postdate&lt;/code&gt;, &lt;code&gt;createddate&lt;/code&gt;, &lt;code&gt;lastmodifieddatetime&lt;/code&gt;, &lt;code&gt;id&lt;/code&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [Integer] :lease_id Filters results to any LeaseID.
    # @option opts [Date] :post_date_start Filters results to any discount with a start date on or after the date specified.
    # @option opts [Date] :post_date_end Filters results to any discount with a start date on or prior to the date specified.
    # @return [Array<(Array<Transaction>, Integer, Hash)>] Array<Transaction> data, response status code and response headers
    def get_lease_discounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_discounts ...'
      end
      # resource path
      local_var_path = '/leases/discounts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'lastModifiedDateTimeStart'] = opts[:'last_modified_date_time_start'] if !opts[:'last_modified_date_time_start'].nil?
      query_params[:'lastModifiedDateTimeEnd'] = opts[:'last_modified_date_time_end'] if !opts[:'last_modified_date_time_end'].nil?
      query_params[:'orderby'] = opts[:'orderby'] if !opts[:'orderby'].nil?
      query_params[:'leaseID'] = opts[:'lease_id'] if !opts[:'lease_id'].nil?
      query_params[:'postDateStart'] = opts[:'post_date_start'] if !opts[:'post_date_start'].nil?
      query_params[:'postDateEnd'] = opts[:'post_date_end'] if !opts[:'post_date_end'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Transaction>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_discounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_discounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all lease documents
    # Retrieves all the documents of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @return [Array<Document>]
    def get_lease_documents(lease_id, opts = {})
      data, _status_code, _headers = get_lease_documents_with_http_info(lease_id, opts)
      data
    end

    # Retrieve all lease documents
    # Retrieves all the documents of a lease.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Document>, Integer, Hash)>] Array<Document> data, response status code and response headers
    def get_lease_documents_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_documents ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_documents"
      end
      # resource path
      local_var_path = '/leases/{leaseId}/document'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Document>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_documents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all lease journal entries 
    # Retrieves a specific lease journal entries.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [Integer] :lease_id2 Filters results to transactions associated with a specific lease.
    # @option opts [Date] :post_date_start Filters results to any transaction with post date on or after to the date specified.
    # @option opts [Date] :post_date_end Filters results to any transaction with post date on or prior to the date specified.
    # @return [JournalEntry]
    def get_lease_journal_entry(lease_id, opts = {})
      data, _status_code, _headers = get_lease_journal_entry_with_http_info(lease_id, opts)
      data
    end

    # Retrieve all lease journal entries 
    # Retrieves a specific lease journal entries.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [Integer] :lease_id2 Filters results to transactions associated with a specific lease.
    # @option opts [Date] :post_date_start Filters results to any transaction with post date on or after to the date specified.
    # @option opts [Date] :post_date_end Filters results to any transaction with post date on or prior to the date specified.
    # @return [Array<(JournalEntry, Integer, Hash)>] JournalEntry data, response status code and response headers
    def get_lease_journal_entry_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_journal_entry ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_journal_entry"
      end
      # resource path
      local_var_path = '/leases/journalentries/{leaseID}'.sub('{' + 'leaseID' + '}', CGI.escape(lease_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'lastModifiedDateTimeStart'] = opts[:'last_modified_date_time_start'] if !opts[:'last_modified_date_time_start'].nil?
      query_params[:'lastModifiedDateTimeEnd'] = opts[:'last_modified_date_time_end'] if !opts[:'last_modified_date_time_end'].nil?
      query_params[:'orderby'] = opts[:'orderby'] if !opts[:'orderby'].nil?
      query_params[:'leaseID'] = opts[:'lease_id2'] if !opts[:'lease_id2'].nil?
      query_params[:'postDateStart'] = opts[:'post_date_start'] if !opts[:'post_date_start'].nil?
      query_params[:'postDateEnd'] = opts[:'post_date_end'] if !opts[:'post_date_end'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'JournalEntry'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_journal_entry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_journal_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve the lease late fee rule
    # Retrieves the lease late fee rule.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @return [LateFeeRule]
    def get_lease_late_fee(lease_id, opts = {})
      data, _status_code, _headers = get_lease_late_fee_with_http_info(lease_id, opts)
      data
    end

    # Retrieve the lease late fee rule
    # Retrieves the lease late fee rule.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(LateFeeRule, Integer, Hash)>] LateFeeRule data, response status code and response headers
    def get_lease_late_fee_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_late_fee ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_late_fee"
      end
      # resource path
      local_var_path = '/leases/{leaseId}/latefeerule'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LateFeeRule'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_late_fee",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_late_fee\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all lease notes
    # Retrieves all the notes of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @return [Array<Note>]
    def get_lease_notes(lease_id, opts = {})
      data, _status_code, _headers = get_lease_notes_with_http_info(lease_id, opts)
      data
    end

    # Retrieve all lease notes
    # Retrieves all the notes of a lease.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Note>, Integer, Hash)>] Array<Note> data, response status code and response headers
    def get_lease_notes_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_notes ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_notes"
      end
      # resource path
      local_var_path = '/leases/{leaseId}/notes'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Note>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all the lease payments
    # Retrieves a list of lease payments.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>leaseid</code>, <code>postdate</code>, <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [Date] :post_date_start Filters results to any transaction with a start date on or after the date specified.
    # @option opts [Date] :post_date_end Filters results to any transaction with a start date on or prior to the date specified.
    # @option opts [Integer] :portfolio_id Filters results associated with a specific portfolio.
    # @option opts [Integer] :lease_id Filters results with Lease ID.
    # @option opts [String] :status Filters results to with Lease Status.
    # @return [Array<Payment>]
    def get_lease_payments(opts = {})
      data, _status_code, _headers = get_lease_payments_with_http_info(opts)
      data
    end

    # Retrieve all the lease payments
    # Retrieves a list of lease payments.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; &lt;br/&gt;&lt;br/&gt;&lt;b&gt;Sortable by:&lt;/b&gt; &lt;code&gt;leaseid&lt;/code&gt;, &lt;code&gt;postdate&lt;/code&gt;, &lt;code&gt;createddate&lt;/code&gt;, &lt;code&gt;lastmodifieddatetime&lt;/code&gt;, &lt;code&gt;id&lt;/code&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [Date] :post_date_start Filters results to any transaction with a start date on or after the date specified.
    # @option opts [Date] :post_date_end Filters results to any transaction with a start date on or prior to the date specified.
    # @option opts [Integer] :portfolio_id Filters results associated with a specific portfolio.
    # @option opts [Integer] :lease_id Filters results with Lease ID.
    # @option opts [String] :status Filters results to with Lease Status.
    # @return [Array<(Array<Payment>, Integer, Hash)>] Array<Payment> data, response status code and response headers
    def get_lease_payments_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_payments ...'
      end
      # resource path
      local_var_path = '/leases/payments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'lastModifiedDateTimeStart'] = opts[:'last_modified_date_time_start'] if !opts[:'last_modified_date_time_start'].nil?
      query_params[:'lastModifiedDateTimeEnd'] = opts[:'last_modified_date_time_end'] if !opts[:'last_modified_date_time_end'].nil?
      query_params[:'orderby'] = opts[:'orderby'] if !opts[:'orderby'].nil?
      query_params[:'postDateStart'] = opts[:'post_date_start'] if !opts[:'post_date_start'].nil?
      query_params[:'postDateEnd'] = opts[:'post_date_end'] if !opts[:'post_date_end'].nil?
      query_params[:'portfolioID'] = opts[:'portfolio_id'] if !opts[:'portfolio_id'].nil?
      query_params[:'leaseID'] = opts[:'lease_id'] if !opts[:'lease_id'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Payment>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_payments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_payments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all the tenant refunds
    # Retrieves a list of tenant refunds.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>leaseid</code>, <code>postdate</code>, <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [Date] :post_date_start Filters results to any transaction with a start date on or after the date specified.
    # @option opts [Date] :post_date_end Filters results to any transaction with a start date on or prior to the date specified.
    # @option opts [Integer] :portfolio_id Filters results associated with a specific portfolio.
    # @option opts [Integer] :lease_id Filters results with Lease ID.
    # @option opts [String] :status Filters results to with Lease Status.
    # @return [Array<Refund>]
    def get_lease_refunds(opts = {})
      data, _status_code, _headers = get_lease_refunds_with_http_info(opts)
      data
    end

    # Retrieve all the tenant refunds
    # Retrieves a list of tenant refunds.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; &lt;br/&gt;&lt;br/&gt;&lt;b&gt;Sortable by:&lt;/b&gt; &lt;code&gt;leaseid&lt;/code&gt;, &lt;code&gt;postdate&lt;/code&gt;, &lt;code&gt;createddate&lt;/code&gt;, &lt;code&gt;lastmodifieddatetime&lt;/code&gt;, &lt;code&gt;id&lt;/code&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [Date] :post_date_start Filters results to any transaction with a start date on or after the date specified.
    # @option opts [Date] :post_date_end Filters results to any transaction with a start date on or prior to the date specified.
    # @option opts [Integer] :portfolio_id Filters results associated with a specific portfolio.
    # @option opts [Integer] :lease_id Filters results with Lease ID.
    # @option opts [String] :status Filters results to with Lease Status.
    # @return [Array<(Array<Refund>, Integer, Hash)>] Array<Refund> data, response status code and response headers
    def get_lease_refunds_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_refunds ...'
      end
      # resource path
      local_var_path = '/leases/refunds'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'lastModifiedDateTimeStart'] = opts[:'last_modified_date_time_start'] if !opts[:'last_modified_date_time_start'].nil?
      query_params[:'lastModifiedDateTimeEnd'] = opts[:'last_modified_date_time_end'] if !opts[:'last_modified_date_time_end'].nil?
      query_params[:'orderby'] = opts[:'orderby'] if !opts[:'orderby'].nil?
      query_params[:'postDateStart'] = opts[:'post_date_start'] if !opts[:'post_date_start'].nil?
      query_params[:'postDateEnd'] = opts[:'post_date_end'] if !opts[:'post_date_end'].nil?
      query_params[:'portfolioID'] = opts[:'portfolio_id'] if !opts[:'portfolio_id'].nil?
      query_params[:'leaseID'] = opts[:'lease_id'] if !opts[:'lease_id'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Refund>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_refunds",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_refunds\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all lease work orders
    # Retrieves all the work orders of a lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @return [Array<WorkOrder>]
    def get_lease_work_orders(lease_id, opts = {})
      data, _status_code, _headers = get_lease_work_orders_with_http_info(lease_id, opts)
      data
    end

    # Retrieve all lease work orders
    # Retrieves all the work orders of a lease.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; 
    # @param lease_id [Integer] Lease ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<WorkOrder>, Integer, Hash)>] Array<WorkOrder> data, response status code and response headers
    def get_lease_work_orders_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_work_orders ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_work_orders"
      end
      # resource path
      local_var_path = '/leases/{leaseId}/workorders'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<WorkOrder>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_work_orders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_work_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all leases
    # Retrieves a list of leases.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>startdate</code>, <code>idnumber</code>, <code>scheduledmoveoutdate</code>, <code>enddate</code>, <code>lastmodifieddatetime</code>, <code>status</code>, <code>moveoutdate</code>, <code>id</code>, <code>moveindate</code>
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [Date] :start_date_start Filters results to any lease with a start date on or after the date specified.
    # @option opts [Date] :start_date_end Filters results to any lease with a start date on or prior to the date specified.
    # @option opts [Date] :end_date_start Filters results to any lease with a end date on or after the date specified.
    # @option opts [Date] :end_date_end Filters results to any lease with a end date on or prior to the date specified.
    # @option opts [Date] :move_in_date_start Filters results to any lease with a move-in date on or after the date specified.
    # @option opts [Date] :move_in_date_end Filters results to any lease with a move-in date on or prior to the date specified.
    # @option opts [Date] :schedule_move_out_date_start Filters results to any lease with a move-out date on or after the date specified.
    # @option opts [Date] :schedule_move_out_date_end Filters results to any lease with a move-out date on or prior to the date specified.
    # @option opts [Integer] :portfolio_id Filters results to leases associated with a specific portfolio.
    # @option opts [Integer] :building_id Filters results to leases associated with a specific building.
    # @option opts [Integer] :unit_id Filters results to leases associated with a specific unit.
    # @option opts [String] :status Filters results to inspections with a specific status.
    # @option opts [Boolean] :include_custom_fields includeCustomFields (default to false)
    # @return [Array<Lease>]
    def get_leases(opts = {})
      data, _status_code, _headers = get_leases_with_http_info(opts)
      data
    end

    # Retrieve all leases
    # Retrieves a list of leases.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; &lt;br/&gt;&lt;br/&gt;&lt;b&gt;Sortable by:&lt;/b&gt; &lt;code&gt;startdate&lt;/code&gt;, &lt;code&gt;idnumber&lt;/code&gt;, &lt;code&gt;scheduledmoveoutdate&lt;/code&gt;, &lt;code&gt;enddate&lt;/code&gt;, &lt;code&gt;lastmodifieddatetime&lt;/code&gt;, &lt;code&gt;status&lt;/code&gt;, &lt;code&gt;moveoutdate&lt;/code&gt;, &lt;code&gt;id&lt;/code&gt;, &lt;code&gt;moveindate&lt;/code&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [Date] :start_date_start Filters results to any lease with a start date on or after the date specified.
    # @option opts [Date] :start_date_end Filters results to any lease with a start date on or prior to the date specified.
    # @option opts [Date] :end_date_start Filters results to any lease with a end date on or after the date specified.
    # @option opts [Date] :end_date_end Filters results to any lease with a end date on or prior to the date specified.
    # @option opts [Date] :move_in_date_start Filters results to any lease with a move-in date on or after the date specified.
    # @option opts [Date] :move_in_date_end Filters results to any lease with a move-in date on or prior to the date specified.
    # @option opts [Date] :schedule_move_out_date_start Filters results to any lease with a move-out date on or after the date specified.
    # @option opts [Date] :schedule_move_out_date_end Filters results to any lease with a move-out date on or prior to the date specified.
    # @option opts [Integer] :portfolio_id Filters results to leases associated with a specific portfolio.
    # @option opts [Integer] :building_id Filters results to leases associated with a specific building.
    # @option opts [Integer] :unit_id Filters results to leases associated with a specific unit.
    # @option opts [String] :status Filters results to inspections with a specific status.
    # @option opts [Boolean] :include_custom_fields includeCustomFields (default to false)
    # @return [Array<(Array<Lease>, Integer, Hash)>] Array<Lease> data, response status code and response headers
    def get_leases_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_leases ...'
      end
      # resource path
      local_var_path = '/leases'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'lastModifiedDateTimeStart'] = opts[:'last_modified_date_time_start'] if !opts[:'last_modified_date_time_start'].nil?
      query_params[:'lastModifiedDateTimeEnd'] = opts[:'last_modified_date_time_end'] if !opts[:'last_modified_date_time_end'].nil?
      query_params[:'orderby'] = opts[:'orderby'] if !opts[:'orderby'].nil?
      query_params[:'startDateStart'] = opts[:'start_date_start'] if !opts[:'start_date_start'].nil?
      query_params[:'startDateEnd'] = opts[:'start_date_end'] if !opts[:'start_date_end'].nil?
      query_params[:'endDateStart'] = opts[:'end_date_start'] if !opts[:'end_date_start'].nil?
      query_params[:'endDateEnd'] = opts[:'end_date_end'] if !opts[:'end_date_end'].nil?
      query_params[:'moveInDateStart'] = opts[:'move_in_date_start'] if !opts[:'move_in_date_start'].nil?
      query_params[:'moveInDateEnd'] = opts[:'move_in_date_end'] if !opts[:'move_in_date_end'].nil?
      query_params[:'scheduleMoveOutDateStart'] = opts[:'schedule_move_out_date_start'] if !opts[:'schedule_move_out_date_start'].nil?
      query_params[:'scheduleMoveOutDateEnd'] = opts[:'schedule_move_out_date_end'] if !opts[:'schedule_move_out_date_end'].nil?
      query_params[:'portfolioID'] = opts[:'portfolio_id'] if !opts[:'portfolio_id'].nil?
      query_params[:'buildingID'] = opts[:'building_id'] if !opts[:'building_id'].nil?
      query_params[:'unitID'] = opts[:'unit_id'] if !opts[:'unit_id'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'includeCustomFields'] = opts[:'include_custom_fields'] if !opts[:'include_custom_fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Lease>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_leases",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_leases\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a lease (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates an existing lease.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 
    # @param lease_id [Integer] Lease ID
    # @param save_lease [SaveLease] lease
    # @param [Hash] opts the optional parameters
    # @return [Lease]
    def update_lease(lease_id, save_lease, opts = {})
      data, _status_code, _headers = update_lease_with_http_info(lease_id, save_lease, opts)
      data
    end

    # Update a lease (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Updates an existing lease.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param lease_id [Integer] Lease ID
    # @param save_lease [SaveLease] lease
    # @param [Hash] opts the optional parameters
    # @return [Array<(Lease, Integer, Hash)>] Lease data, response status code and response headers
    def update_lease_with_http_info(lease_id, save_lease, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.update_lease ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.update_lease"
      end
      # verify the required parameter 'save_lease' is set
      if @api_client.config.client_side_validation && save_lease.nil?
        fail ArgumentError, "Missing the required parameter 'save_lease' when calling LeasesApi.update_lease"
      end
      # resource path
      local_var_path = '/leases/{leaseId}'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_lease)

      # return_type
      return_type = opts[:debug_return_type] || 'Lease'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.update_lease",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#update_lease\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a lease adjustment (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates an lease adjustment.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 
    # @param adjustment_id [Integer] Adjustment ID
    # @param save_adjustment [SaveAdjustment] saveAdjustment
    # @param [Hash] opts the optional parameters
    # @return [ChargeTx]
    def update_lease_adjustment(adjustment_id, save_adjustment, opts = {})
      data, _status_code, _headers = update_lease_adjustment_with_http_info(adjustment_id, save_adjustment, opts)
      data
    end

    # Update a lease adjustment (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Updates an lease adjustment.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param adjustment_id [Integer] Adjustment ID
    # @param save_adjustment [SaveAdjustment] saveAdjustment
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChargeTx, Integer, Hash)>] ChargeTx data, response status code and response headers
    def update_lease_adjustment_with_http_info(adjustment_id, save_adjustment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.update_lease_adjustment ...'
      end
      # verify the required parameter 'adjustment_id' is set
      if @api_client.config.client_side_validation && adjustment_id.nil?
        fail ArgumentError, "Missing the required parameter 'adjustment_id' when calling LeasesApi.update_lease_adjustment"
      end
      # verify the required parameter 'save_adjustment' is set
      if @api_client.config.client_side_validation && save_adjustment.nil?
        fail ArgumentError, "Missing the required parameter 'save_adjustment' when calling LeasesApi.update_lease_adjustment"
      end
      # resource path
      local_var_path = '/leases/adjustments/{adjustmentID}'.sub('{' + 'adjustmentID' + '}', CGI.escape(adjustment_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_adjustment)

      # return_type
      return_type = opts[:debug_return_type] || 'ChargeTx'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.update_lease_adjustment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#update_lease_adjustment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a lease charge (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates a lease charge.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 
    # @param charge_id [Integer] Charge ID
    # @param save_charge [SaveCharge] saveCharge
    # @param [Hash] opts the optional parameters
    # @return [ChargeTx]
    def update_lease_charge(charge_id, save_charge, opts = {})
      data, _status_code, _headers = update_lease_charge_with_http_info(charge_id, save_charge, opts)
      data
    end

    # Update a lease charge (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Updates a lease charge.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param charge_id [Integer] Charge ID
    # @param save_charge [SaveCharge] saveCharge
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChargeTx, Integer, Hash)>] ChargeTx data, response status code and response headers
    def update_lease_charge_with_http_info(charge_id, save_charge, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.update_lease_charge ...'
      end
      # verify the required parameter 'charge_id' is set
      if @api_client.config.client_side_validation && charge_id.nil?
        fail ArgumentError, "Missing the required parameter 'charge_id' when calling LeasesApi.update_lease_charge"
      end
      # verify the required parameter 'save_charge' is set
      if @api_client.config.client_side_validation && save_charge.nil?
        fail ArgumentError, "Missing the required parameter 'save_charge' when calling LeasesApi.update_lease_charge"
      end
      # resource path
      local_var_path = '/leases/charges/{chargeID}'.sub('{' + 'chargeID' + '}', CGI.escape(charge_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_charge)

      # return_type
      return_type = opts[:debug_return_type] || 'ChargeTx'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.update_lease_charge",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#update_lease_charge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a lease Discount (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates a lease Discount.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 
    # @param discount_id [Integer] Discount ID
    # @param save_discount [SaveDiscount] saveDiscount
    # @param [Hash] opts the optional parameters
    # @return [Discount]
    def update_lease_discount(discount_id, save_discount, opts = {})
      data, _status_code, _headers = update_lease_discount_with_http_info(discount_id, save_discount, opts)
      data
    end

    # Updates a lease Discount (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Updates a lease Discount.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param discount_id [Integer] Discount ID
    # @param save_discount [SaveDiscount] saveDiscount
    # @param [Hash] opts the optional parameters
    # @return [Array<(Discount, Integer, Hash)>] Discount data, response status code and response headers
    def update_lease_discount_with_http_info(discount_id, save_discount, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.update_lease_discount ...'
      end
      # verify the required parameter 'discount_id' is set
      if @api_client.config.client_side_validation && discount_id.nil?
        fail ArgumentError, "Missing the required parameter 'discount_id' when calling LeasesApi.update_lease_discount"
      end
      # verify the required parameter 'save_discount' is set
      if @api_client.config.client_side_validation && save_discount.nil?
        fail ArgumentError, "Missing the required parameter 'save_discount' when calling LeasesApi.update_lease_discount"
      end
      # resource path
      local_var_path = '/leases/discounts/{discountID}'.sub('{' + 'discountID' + '}', CGI.escape(discount_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_discount)

      # return_type
      return_type = opts[:debug_return_type] || 'Discount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.update_lease_discount",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#update_lease_discount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a lease journal entry (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates a lease journal entry.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> <br/><br/><b>Sortable by:</b> <code>postdate</code>, <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>
    # @param journalentry_id [Integer] Journal Entry ID
    # @param update_lease_journal_entry [UpdateLeaseJournalEntry] updateLeaseJournalEntry
    # @param [Hash] opts the optional parameters
    # @return [JournalEntry]
    def update_lease_journal_entry(journalentry_id, update_lease_journal_entry, opts = {})
      data, _status_code, _headers = update_lease_journal_entry_with_http_info(journalentry_id, update_lease_journal_entry, opts)
      data
    end

    # Update a lease journal entry (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Updates a lease journal entry.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; &lt;br/&gt;&lt;br/&gt;&lt;b&gt;Sortable by:&lt;/b&gt; &lt;code&gt;postdate&lt;/code&gt;, &lt;code&gt;createddate&lt;/code&gt;, &lt;code&gt;lastmodifieddatetime&lt;/code&gt;, &lt;code&gt;id&lt;/code&gt;
    # @param journalentry_id [Integer] Journal Entry ID
    # @param update_lease_journal_entry [UpdateLeaseJournalEntry] updateLeaseJournalEntry
    # @param [Hash] opts the optional parameters
    # @return [Array<(JournalEntry, Integer, Hash)>] JournalEntry data, response status code and response headers
    def update_lease_journal_entry_with_http_info(journalentry_id, update_lease_journal_entry, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.update_lease_journal_entry ...'
      end
      # verify the required parameter 'journalentry_id' is set
      if @api_client.config.client_side_validation && journalentry_id.nil?
        fail ArgumentError, "Missing the required parameter 'journalentry_id' when calling LeasesApi.update_lease_journal_entry"
      end
      # verify the required parameter 'update_lease_journal_entry' is set
      if @api_client.config.client_side_validation && update_lease_journal_entry.nil?
        fail ArgumentError, "Missing the required parameter 'update_lease_journal_entry' when calling LeasesApi.update_lease_journal_entry"
      end
      # resource path
      local_var_path = '/leases/journalentries/{journalentryID}'.sub('{' + 'journalentryID' + '}', CGI.escape(journalentry_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_lease_journal_entry)

      # return_type
      return_type = opts[:debug_return_type] || 'JournalEntry'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.update_lease_journal_entry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#update_lease_journal_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a lease payment (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates a lease payment.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 
    # @param entity_id [Integer] Lease Payment ID
    # @param save_payment [SavePayment] savePayment
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def update_lease_payment(entity_id, save_payment, opts = {})
      data, _status_code, _headers = update_lease_payment_with_http_info(entity_id, save_payment, opts)
      data
    end

    # Update a lease payment (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Updates a lease payment.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param entity_id [Integer] Lease Payment ID
    # @param save_payment [SavePayment] savePayment
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Integer, Hash)>] Payment data, response status code and response headers
    def update_lease_payment_with_http_info(entity_id, save_payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.update_lease_payment ...'
      end
      # verify the required parameter 'entity_id' is set
      if @api_client.config.client_side_validation && entity_id.nil?
        fail ArgumentError, "Missing the required parameter 'entity_id' when calling LeasesApi.update_lease_payment"
      end
      # verify the required parameter 'save_payment' is set
      if @api_client.config.client_side_validation && save_payment.nil?
        fail ArgumentError, "Missing the required parameter 'save_payment' when calling LeasesApi.update_lease_payment"
      end
      # resource path
      local_var_path = '/leases/payments/{entityID}'.sub('{' + 'entityID' + '}', CGI.escape(entity_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_payment)

      # return_type
      return_type = opts[:debug_return_type] || 'Payment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.update_lease_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#update_lease_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a lease refund (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Update an lease refund.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">LEASES</span> - <code>Write</code> 
    # @param refund_id [Integer] Refund ID
    # @param save_refund [SaveRefund] saveRefund
    # @param [Hash] opts the optional parameters
    # @return [Refund]
    def update_lease_refund(refund_id, save_refund, opts = {})
      data, _status_code, _headers = update_lease_refund_with_http_info(refund_id, save_refund, opts)
      data
    end

    # Update a lease refund (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Update an lease refund.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;LEASES&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param refund_id [Integer] Refund ID
    # @param save_refund [SaveRefund] saveRefund
    # @param [Hash] opts the optional parameters
    # @return [Array<(Refund, Integer, Hash)>] Refund data, response status code and response headers
    def update_lease_refund_with_http_info(refund_id, save_refund, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.update_lease_refund ...'
      end
      # verify the required parameter 'refund_id' is set
      if @api_client.config.client_side_validation && refund_id.nil?
        fail ArgumentError, "Missing the required parameter 'refund_id' when calling LeasesApi.update_lease_refund"
      end
      # verify the required parameter 'save_refund' is set
      if @api_client.config.client_side_validation && save_refund.nil?
        fail ArgumentError, "Missing the required parameter 'save_refund' when calling LeasesApi.update_lease_refund"
      end
      # resource path
      local_var_path = '/leases/refunds/{refundID}'.sub('{' + 'refundID' + '}', CGI.escape(refund_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_refund)

      # return_type
      return_type = opts[:debug_return_type] || 'Refund'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.update_lease_refund",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#update_lease_refund\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
