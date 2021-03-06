//
// IssueMetadata.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Extended issue attributes/issue metadata */
open class IssueMetadata: JSONEncodable {

    /** Preferred installation date */
    public var preferredInstallDate: String?
    /** Preferred installation time-slot (AM/PM) */
    public var preferredTimeFrame: String?
    /** Alternative preferred installation date */
    public var alternateInstallDate: String?
    /** Alternative preferred installation time-slot (AM/PM) */
    public var alternateTimeFrame: String?
    /** Number of POS devices */
    public var numberOfPosDevices: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["preferred_install_date"] = self.preferredInstallDate
        nillableDictionary["preferred_time_frame"] = self.preferredTimeFrame
        nillableDictionary["alternate_install_date"] = self.alternateInstallDate
        nillableDictionary["alternate_time_frame"] = self.alternateTimeFrame
        nillableDictionary["number_of_pos_devices"] = self.numberOfPosDevices?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

