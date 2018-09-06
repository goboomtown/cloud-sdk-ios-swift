//
// TechnologyAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class TechnologyAPI: APIBase {
    /**
     Delete Technology
     - parameter technologyId: (path) The primary key of the &#x60;CustomerTechnology&#x60; object 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteTechnology(technologyId: String, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        deleteTechnologyWithRequestBuilder(technologyId: technologyId).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Delete Technology
     - POST /technology/delete/{technology_id}
     - Deletes the `CustomerTechnology` object referenced by the object's Primary Key (id)
     - API Key:
       - type: apiKey X-Boomtown-Date 
       - name: X-Boomtown-Date     - API Key:
       - type: apiKey X-Boomtown-Signature 
       - name: X-Boomtown-Signature     - API Key:
       - type: apiKey X-Boomtown-Token 
       - name: X-Boomtown-Token
     - parameter technologyId: (path) The primary key of the &#x60;CustomerTechnology&#x60; object 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteTechnologyWithRequestBuilder(technologyId: String) -> RequestBuilder<Void> {
        var path = "/technology/delete/{technology_id}"
        let technologyIdPreEscape = "\(technologyId)"
        let technologyIdPostEscape = technologyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{technology_id}", with: technologyIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get Technology by ID
     - parameter technologyId: (path) The primary key of the &#x60;CustomerTechnology&#x60; object 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTechnology(technologyId: String, completion: @escaping ((_ data: CustomerTechnologyResponse?, _ error: ErrorResponse?) -> Void)) {
        getTechnologyWithRequestBuilder(technologyId: technologyId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get Technology by ID
     - GET /technology/get/{technology_id}
     - Returns a `CustomerTechnology` object by the object's Primary Key (id)
     - API Key:
       - type: apiKey X-Boomtown-Date 
       - name: X-Boomtown-Date     - API Key:
       - type: apiKey X-Boomtown-Signature 
       - name: X-Boomtown-Signature     - API Key:
       - type: apiKey X-Boomtown-Token 
       - name: X-Boomtown-Token
     - examples: [{contentType=application/json, example=""}]
     - parameter technologyId: (path) The primary key of the &#x60;CustomerTechnology&#x60; object 
     - returns: RequestBuilder<CustomerTechnologyResponse> 
     */
    open class func getTechnologyWithRequestBuilder(technologyId: String) -> RequestBuilder<CustomerTechnologyResponse> {
        var path = "/technology/get/{technology_id}"
        let technologyIdPreEscape = "\(technologyId)"
        let technologyIdPostEscape = technologyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{technology_id}", with: technologyIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<CustomerTechnologyResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List technology types
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listTechnologyDictionary(completion: @escaping ((_ data: TechnologyDictionaryResponse?, _ error: ErrorResponse?) -> Void)) {
        listTechnologyDictionaryWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List technology types
     - GET /technology/meta/dictionary
     - Returns a list of the available technology device types (used for the `type` field of Technology objects)
     - API Key:
       - type: apiKey X-Boomtown-Date 
       - name: X-Boomtown-Date     - API Key:
       - type: apiKey X-Boomtown-Signature 
       - name: X-Boomtown-Signature     - API Key:
       - type: apiKey X-Boomtown-Token 
       - name: X-Boomtown-Token
     - examples: [{contentType=application/json, example=""}]
     - returns: RequestBuilder<TechnologyDictionaryResponse> 
     */
    open class func listTechnologyDictionaryWithRequestBuilder() -> RequestBuilder<TechnologyDictionaryResponse> {
        let path = "/technology/meta/dictionary"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<TechnologyDictionaryResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List technology templates
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listTechnologyTemplates(completion: @escaping ((_ data: CustomerTechnologyResponse?, _ error: ErrorResponse?) -> Void)) {
        listTechnologyTemplatesWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List technology templates
     - GET /technology/meta/templates
     - Returns a list of the available device / technology templates
     - API Key:
       - type: apiKey X-Boomtown-Date 
       - name: X-Boomtown-Date     - API Key:
       - type: apiKey X-Boomtown-Signature 
       - name: X-Boomtown-Signature     - API Key:
       - type: apiKey X-Boomtown-Token 
       - name: X-Boomtown-Token
     - examples: [{contentType=application/json, example=""}]
     - returns: RequestBuilder<CustomerTechnologyResponse> 
     */
    open class func listTechnologyTemplatesWithRequestBuilder() -> RequestBuilder<CustomerTechnologyResponse> {
        let path = "/technology/meta/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<CustomerTechnologyResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create/update a Technology object
     - parameter body: (body) The *Technology*  data to create/update 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putTechnology(body: TechnologyCreateRequest, completion: @escaping ((_ data: TechnologyCreateResponse?, _ error: ErrorResponse?) -> Void)) {
        putTechnologyWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create/update a Technology object
     - POST /technology/put
     - Creates/updates a `CustomerTechnology` object. To create a new object, supply the data for the new object in the request body with the `id` property set to `NULL` or omitted. To **update** an existing entry, ensure the ID of the object to be updated is set in the `id` parameter of the request, and provide any other fields to update.
     - API Key:
       - type: apiKey X-Boomtown-Date 
       - name: X-Boomtown-Date     - API Key:
       - type: apiKey X-Boomtown-Signature 
       - name: X-Boomtown-Signature     - API Key:
       - type: apiKey X-Boomtown-Token 
       - name: X-Boomtown-Token
     - examples: [{contentType=application/json, example=""}]
     - parameter body: (body) The *Technology*  data to create/update 
     - returns: RequestBuilder<TechnologyCreateResponse> 
     */
    open class func putTechnologyWithRequestBuilder(body: TechnologyCreateRequest) -> RequestBuilder<TechnologyCreateResponse> {
        let path = "/technology/put"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON()

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<TechnologyCreateResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}