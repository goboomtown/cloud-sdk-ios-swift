//
// IssueStatus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class IssueStatus: JSONEncodable {

    /** Created */
    public var created: Date?
    /** Type */
    public var type: String?
    /** Status */
    public var status: String?
    /** Resolution */
    public var resolution: String?
    /** Technician job scheduled */
    public var scheduledTime: Date?
    /** State description */
    public var ticketSummaryText: String?
    /** Event/trigger description */
    public var historySummaryText: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["created"] = self.created?.encodeToJSON()
        nillableDictionary["type"] = self.type
        nillableDictionary["status"] = self.status
        nillableDictionary["resolution"] = self.resolution
        nillableDictionary["scheduled_time"] = self.scheduledTime?.encodeToJSON()
        nillableDictionary["ticketSummaryText"] = self.ticketSummaryText
        nillableDictionary["historySummaryText"] = self.historySummaryText

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

