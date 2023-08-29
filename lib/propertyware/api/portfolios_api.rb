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
  class PortfoliosApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Portfolios in bulk (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates Portfolios in bulk.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Write</code> 
    # @param save_portfolio [Array<SavePortfolio>] savePortfolio
    # @param [Hash] opts the optional parameters
    # @return [Array<RESTAPIBulkSuccessResponse>]
    def create_contacts_using_post2(save_portfolio, opts = {})
      data, _status_code, _headers = create_contacts_using_post2_with_http_info(save_portfolio, opts)
      data
    end

    # Create Portfolios in bulk (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Creates Portfolios in bulk.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;PORTFOLIOS&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param save_portfolio [Array<SavePortfolio>] savePortfolio
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RESTAPIBulkSuccessResponse>, Integer, Hash)>] Array<RESTAPIBulkSuccessResponse> data, response status code and response headers
    def create_contacts_using_post2_with_http_info(save_portfolio, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfoliosApi.create_contacts_using_post2 ...'
      end
      # verify the required parameter 'save_portfolio' is set
      if @api_client.config.client_side_validation && save_portfolio.nil?
        fail ArgumentError, "Missing the required parameter 'save_portfolio' when calling PortfoliosApi.create_contacts_using_post2"
      end
      # resource path
      local_var_path = '/portfolios/bulk'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_portfolio)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<RESTAPIBulkSuccessResponse>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"PortfoliosApi.create_contacts_using_post2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfoliosApi#create_contacts_using_post2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a portfolio (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Creates a portfolio.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Write</code> 
    # @param save_portfolio [SavePortfolio] savePortfolio
    # @param [Hash] opts the optional parameters
    # @return [Portfolio]
    def create_portfolio(save_portfolio, opts = {})
      data, _status_code, _headers = create_portfolio_with_http_info(save_portfolio, opts)
      data
    end

    # Create a portfolio (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Creates a portfolio.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;PORTFOLIOS&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param save_portfolio [SavePortfolio] savePortfolio
    # @param [Hash] opts the optional parameters
    # @return [Array<(Portfolio, Integer, Hash)>] Portfolio data, response status code and response headers
    def create_portfolio_with_http_info(save_portfolio, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfoliosApi.create_portfolio ...'
      end
      # verify the required parameter 'save_portfolio' is set
      if @api_client.config.client_side_validation && save_portfolio.nil?
        fail ArgumentError, "Missing the required parameter 'save_portfolio' when calling PortfoliosApi.create_portfolio"
      end
      # resource path
      local_var_path = '/portfolios'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_portfolio)

      # return_type
      return_type = opts[:debug_return_type] || 'Portfolio'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"PortfoliosApi.create_portfolio",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfoliosApi#create_portfolio\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a portfolio conversation (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Deletes a specific portfolio conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Delete</code> 
    # @param portfolio_id [Integer] Portfolio ID
    # @param conversation_id [Integer] Conversation ID
    # @param [Hash] opts the optional parameters
    # @return [ResponseEntity]
    def delete_portfolio_conversation(portfolio_id, conversation_id, opts = {})
      data, _status_code, _headers = delete_portfolio_conversation_with_http_info(portfolio_id, conversation_id, opts)
      data
    end

    # Delete a portfolio conversation (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Deletes a specific portfolio conversation.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;PORTFOLIOS&lt;/span&gt; - &lt;code&gt;Delete&lt;/code&gt; 
    # @param portfolio_id [Integer] Portfolio ID
    # @param conversation_id [Integer] Conversation ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponseEntity, Integer, Hash)>] ResponseEntity data, response status code and response headers
    def delete_portfolio_conversation_with_http_info(portfolio_id, conversation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfoliosApi.delete_portfolio_conversation ...'
      end
      # verify the required parameter 'portfolio_id' is set
      if @api_client.config.client_side_validation && portfolio_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_id' when calling PortfoliosApi.delete_portfolio_conversation"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling PortfoliosApi.delete_portfolio_conversation"
      end
      # resource path
      local_var_path = '/portfolios/{portfolioID}/conversations/{conversationID}'.sub('{' + 'portfolioID' + '}', CGI.escape(portfolio_id.to_s)).sub('{' + 'conversationID' + '}', CGI.escape(conversation_id.to_s))

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
        :operation => :"PortfoliosApi.delete_portfolio_conversation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfoliosApi#delete_portfolio_conversation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a portfolio
    # Retrieves a specific portfolio.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Read</code> 
    # @param portfolio_id [Integer] Portfolio ID
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_custom_fields includeCustomFields (default to true)
    # @return [Portfolio]
    def get_portfolio(portfolio_id, opts = {})
      data, _status_code, _headers = get_portfolio_with_http_info(portfolio_id, opts)
      data
    end

    # Retrieve a portfolio
    # Retrieves a specific portfolio.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;PORTFOLIOS&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; 
    # @param portfolio_id [Integer] Portfolio ID
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_custom_fields includeCustomFields (default to true)
    # @return [Array<(Portfolio, Integer, Hash)>] Portfolio data, response status code and response headers
    def get_portfolio_with_http_info(portfolio_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfoliosApi.get_portfolio ...'
      end
      # verify the required parameter 'portfolio_id' is set
      if @api_client.config.client_side_validation && portfolio_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_id' when calling PortfoliosApi.get_portfolio"
      end
      # resource path
      local_var_path = '/portfolios/{portfolioID}'.sub('{' + 'portfolioID' + '}', CGI.escape(portfolio_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Portfolio'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"PortfoliosApi.get_portfolio",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfoliosApi#get_portfolio\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a portfolio conversation
    # Retrieves a specific portfolio conversation.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Read</code> 
    # @param portfolio_id [Integer] Portfolio ID
    # @param conversation_id [Integer] Conversation ID
    # @param [Hash] opts the optional parameters
    # @return [Conversation]
    def get_portfolio_conversation(portfolio_id, conversation_id, opts = {})
      data, _status_code, _headers = get_portfolio_conversation_with_http_info(portfolio_id, conversation_id, opts)
      data
    end

    # Retrieve a portfolio conversation
    # Retrieves a specific portfolio conversation.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;PORTFOLIOS&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; 
    # @param portfolio_id [Integer] Portfolio ID
    # @param conversation_id [Integer] Conversation ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Conversation, Integer, Hash)>] Conversation data, response status code and response headers
    def get_portfolio_conversation_with_http_info(portfolio_id, conversation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfoliosApi.get_portfolio_conversation ...'
      end
      # verify the required parameter 'portfolio_id' is set
      if @api_client.config.client_side_validation && portfolio_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_id' when calling PortfoliosApi.get_portfolio_conversation"
      end
      # verify the required parameter 'conversation_id' is set
      if @api_client.config.client_side_validation && conversation_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversation_id' when calling PortfoliosApi.get_portfolio_conversation"
      end
      # resource path
      local_var_path = '/portfolios/{portfolioID}/conversations/{conversationID}'.sub('{' + 'portfolioID' + '}', CGI.escape(portfolio_id.to_s)).sub('{' + 'conversationID' + '}', CGI.escape(conversation_id.to_s))

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
        :operation => :"PortfoliosApi.get_portfolio_conversation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfoliosApi#get_portfolio_conversation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all portfolio conversations
    # Retrieves all the conversations of a portfolio.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>lastmodifieddatetime</code>, <code>id</code>
    # @param portfolio_id [Integer] Portfolio ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [String] :type Filters results by the conversation type.
    # @return [Array<Conversation>]
    def get_portfolio_conversations(portfolio_id, opts = {})
      data, _status_code, _headers = get_portfolio_conversations_with_http_info(portfolio_id, opts)
      data
    end

    # Retrieve all portfolio conversations
    # Retrieves all the conversations of a portfolio.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;PORTFOLIOS&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; &lt;br/&gt;&lt;br/&gt;&lt;b&gt;Sortable by:&lt;/b&gt; &lt;code&gt;createddate&lt;/code&gt;, &lt;code&gt;lastmodifieddatetime&lt;/code&gt;, &lt;code&gt;id&lt;/code&gt;
    # @param portfolio_id [Integer] Portfolio ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [String] :type Filters results by the conversation type.
    # @return [Array<(Array<Conversation>, Integer, Hash)>] Array<Conversation> data, response status code and response headers
    def get_portfolio_conversations_with_http_info(portfolio_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfoliosApi.get_portfolio_conversations ...'
      end
      # verify the required parameter 'portfolio_id' is set
      if @api_client.config.client_side_validation && portfolio_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_id' when calling PortfoliosApi.get_portfolio_conversations"
      end
      allowable_values = ["MANAGEMENT_TEAM", "OWNER", "TENANT"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/portfolios/{portfolioID}/conversations'.sub('{' + 'portfolioID' + '}', CGI.escape(portfolio_id.to_s))

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
        :operation => :"PortfoliosApi.get_portfolio_conversations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfoliosApi#get_portfolio_conversations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all portfolios
    # Retrieves a list of portfolios.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Read</code> <br/><br/><b>Sortable by:</b> <code>createddate</code>, <code>name</code>, <code>abbreviation</code>, <code>lastmodifieddatetime</code>, <code>id</code>
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [Boolean] :include_deactivated Filters results to portfolios with a deactivated records.
    # @option opts [Boolean] :include_custom_fields includeCustomFields (default to false)
    # @return [Array<Portfolio>]
    def get_portfolios(opts = {})
      data, _status_code, _headers = get_portfolios_with_http_info(opts)
      data
    end

    # Retrieve all portfolios
    # Retrieves a list of portfolios.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;PORTFOLIOS&lt;/span&gt; - &lt;code&gt;Read&lt;/code&gt; &lt;br/&gt;&lt;br/&gt;&lt;b&gt;Sortable by:&lt;/b&gt; &lt;code&gt;createddate&lt;/code&gt;, &lt;code&gt;name&lt;/code&gt;, &lt;code&gt;abbreviation&lt;/code&gt;, &lt;code&gt;lastmodifieddatetime&lt;/code&gt;, &lt;code&gt;id&lt;/code&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The offset is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 500 and the default is 100. (default to 100)
    # @option opts [Time] :last_modified_date_time_start Filters results to any item modified on or after the date time specified. 
    # @option opts [Time] :last_modified_date_time_end Filters results to any item modified on or prior to the date time specified. 
    # @option opts [String] :orderby Indicates the field(s) and direction to sort the results in the response.
    # @option opts [Boolean] :include_deactivated Filters results to portfolios with a deactivated records.
    # @option opts [Boolean] :include_custom_fields includeCustomFields (default to false)
    # @return [Array<(Array<Portfolio>, Integer, Hash)>] Array<Portfolio> data, response status code and response headers
    def get_portfolios_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfoliosApi.get_portfolios ...'
      end
      # resource path
      local_var_path = '/portfolios'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'lastModifiedDateTimeStart'] = opts[:'last_modified_date_time_start'] if !opts[:'last_modified_date_time_start'].nil?
      query_params[:'lastModifiedDateTimeEnd'] = opts[:'last_modified_date_time_end'] if !opts[:'last_modified_date_time_end'].nil?
      query_params[:'orderby'] = opts[:'orderby'] if !opts[:'orderby'].nil?
      query_params[:'includeDeactivated'] = opts[:'include_deactivated'] if !opts[:'include_deactivated'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<Portfolio>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"PortfoliosApi.get_portfolios",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfoliosApi#get_portfolios\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a portfolio (BETA)
    # <p class=\"betaError\"><b>Note: </b>Write access is only available to customers who have opted in to our beta program. Please reach out to support if you'd like to be included.</p> Updates an existing portfolio.<br/><br/><b>Required permission:</b><br/><span class=\"permissionBlock\">PORTFOLIOS</span> - <code>Write</code> 
    # @param portfolio_id [Integer] Portfolio ID
    # @param save_portfolio [SavePortfolio] savePortfolio
    # @param [Hash] opts the optional parameters
    # @return [Portfolio]
    def update_portfolio(portfolio_id, save_portfolio, opts = {})
      data, _status_code, _headers = update_portfolio_with_http_info(portfolio_id, save_portfolio, opts)
      data
    end

    # Update a portfolio (BETA)
    # &lt;p class&#x3D;\&quot;betaError\&quot;&gt;&lt;b&gt;Note: &lt;/b&gt;Write access is only available to customers who have opted in to our beta program. Please reach out to support if you&#39;d like to be included.&lt;/p&gt; Updates an existing portfolio.&lt;br/&gt;&lt;br/&gt;&lt;b&gt;Required permission:&lt;/b&gt;&lt;br/&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;PORTFOLIOS&lt;/span&gt; - &lt;code&gt;Write&lt;/code&gt; 
    # @param portfolio_id [Integer] Portfolio ID
    # @param save_portfolio [SavePortfolio] savePortfolio
    # @param [Hash] opts the optional parameters
    # @return [Array<(Portfolio, Integer, Hash)>] Portfolio data, response status code and response headers
    def update_portfolio_with_http_info(portfolio_id, save_portfolio, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfoliosApi.update_portfolio ...'
      end
      # verify the required parameter 'portfolio_id' is set
      if @api_client.config.client_side_validation && portfolio_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_id' when calling PortfoliosApi.update_portfolio"
      end
      # verify the required parameter 'save_portfolio' is set
      if @api_client.config.client_side_validation && save_portfolio.nil?
        fail ArgumentError, "Missing the required parameter 'save_portfolio' when calling PortfoliosApi.update_portfolio"
      end
      # resource path
      local_var_path = '/portfolios/{portfolioID}'.sub('{' + 'portfolioID' + '}', CGI.escape(portfolio_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(save_portfolio)

      # return_type
      return_type = opts[:debug_return_type] || 'Portfolio'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['organizationId', 'clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"PortfoliosApi.update_portfolio",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfoliosApi#update_portfolio\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
