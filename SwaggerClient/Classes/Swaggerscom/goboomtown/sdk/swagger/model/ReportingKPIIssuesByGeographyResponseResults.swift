//
// ReportingKPIIssuesByGeographyResponseResults.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class ReportingKPIIssuesByGeographyResponseResults: JSONEncodable {

    public var orgId: String?
    public var org: String?
    public var orgTeamId: String?
    public var orgTeam: String?
    public var divisionUnit: String?
    public var divisionValue: String?
    public var issues: Double?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["Org Id"] = self.orgId
        nillableDictionary["Org"] = self.org
        nillableDictionary["Org Team Id"] = self.orgTeamId
        nillableDictionary["Org Team"] = self.orgTeam
        nillableDictionary["Division Unit"] = self.divisionUnit
        nillableDictionary["Division Value"] = self.divisionValue
        nillableDictionary["# Issues"] = self.issues

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

