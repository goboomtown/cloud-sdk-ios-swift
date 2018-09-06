//
// CustomerMetaEmoticonsResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CustomerMetaEmoticonsResponse: JSONEncodable {

    /** Indicates success of the operation */
    public var success: Bool?
    public var currentServerTime: Date?
    /** Total objects available */
    public var totalCount: Int32?
    /** Total objects retrieved */
    public var returned: Int32?
    /** Total pages available */
    public var pages: Int32?
    /** Deprecated */
    public var message: String?
    public var emoticons: [Emoticon]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["success"] = self.success
        nillableDictionary["current_server_time"] = self.currentServerTime?.encodeToJSON()
        nillableDictionary["totalCount"] = self.totalCount?.encodeToJSON()
        nillableDictionary["returned"] = self.returned?.encodeToJSON()
        nillableDictionary["pages"] = self.pages?.encodeToJSON()
        nillableDictionary["message"] = self.message
        nillableDictionary["emoticons"] = self.emoticons?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
