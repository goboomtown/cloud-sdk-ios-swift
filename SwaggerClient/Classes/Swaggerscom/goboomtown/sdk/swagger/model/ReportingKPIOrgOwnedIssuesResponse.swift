//
// ReportingKPIOrgOwnedIssuesResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class ReportingKPIOrgOwnedIssuesResponse: JSONEncodable {

    public var headers: [ReportHeadersItem]?
    /** Indicates success of the operation */
    public var success: Bool?
    public var currentServerTime: Date?
    /** Report title */
    public var title: String?
    public var results: [ReportingKPIOrgOwnedIssuesResponseResults]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["headers"] = self.headers?.encodeToJSON()
        nillableDictionary["success"] = self.success
        nillableDictionary["current_server_time"] = self.currentServerTime?.encodeToJSON()
        nillableDictionary["title"] = self.title
        nillableDictionary["results"] = self.results?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

