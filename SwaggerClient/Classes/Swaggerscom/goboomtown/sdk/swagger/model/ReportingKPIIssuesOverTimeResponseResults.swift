//
// ReportingKPIIssuesOverTimeResponseResults.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class ReportingKPIIssuesOverTimeResponseResults: JSONEncodable {

    public var orgId: String?
    public var org: String?
    public var orgTeamId: String?
    public var orgTeam: String?
    public var category: String?
    public var type: String?
    public var intervalLabel: String?
    public var intervalDate: String?
    public var interval: Double?
    public var issues: Double?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["Org Id"] = self.orgId
        nillableDictionary["Org"] = self.org
        nillableDictionary["Org Team Id"] = self.orgTeamId
        nillableDictionary["Org Team"] = self.orgTeam
        nillableDictionary["Category"] = self.category
        nillableDictionary["Type"] = self.type
        nillableDictionary["Interval Label"] = self.intervalLabel
        nillableDictionary["Interval Date"] = self.intervalDate
        nillableDictionary["Interval"] = self.interval
        nillableDictionary["# Issues"] = self.issues

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
