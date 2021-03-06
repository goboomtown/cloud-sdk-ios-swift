//
// CustomerTechnologySummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CustomerTechnologySummary: JSONEncodable {

    /** Primary key */
    public var id: String?
    /** The primary key of the related *CustomerTechnology* */
    public var parentId: String?
    /** Type */
    public var type: String?
    /** Is device in critial status */
    public var critical: Bool?
    /** is active */
    public var active: Bool?
    /** device make */
    public var make: String?
    /** device model */
    public var model: String?
    /** Last time contact with device was attempted */
    public var lastChecked: Date?
    /** Last time contact with the device was made */
    public var lastSeen: Date?
    /** Last time a change was recorded */
    public var lastChanged: Date?
    /** PCI compliance status */
    public var pciCompliant: String?
    /** Monitoring policy */
    public var policy: String?
    /** Status */
    public var status: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["parent_id"] = self.parentId
        nillableDictionary["type"] = self.type
        nillableDictionary["critical"] = self.critical
        nillableDictionary["active"] = self.active
        nillableDictionary["make"] = self.make
        nillableDictionary["model"] = self.model
        nillableDictionary["last_checked"] = self.lastChecked?.encodeToJSON()
        nillableDictionary["last_seen"] = self.lastSeen?.encodeToJSON()
        nillableDictionary["last_changed"] = self.lastChanged?.encodeToJSON()
        nillableDictionary["pci_compliant"] = self.pciCompliant
        nillableDictionary["policy"] = self.policy
        nillableDictionary["status"] = self.status

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

