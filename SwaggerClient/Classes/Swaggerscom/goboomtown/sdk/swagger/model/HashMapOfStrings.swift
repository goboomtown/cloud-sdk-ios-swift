//
// HashMapOfStrings.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Hash (Dictionary) mapping all keys to string values. The &#x60;key&#x60; property name is an example; the actual property names will depend on the keys in the hash map. */
open class HashMapOfStrings: JSONEncodable {


    public var additionalProperties: [AnyHashable:String] = [:]

    public init() {}

    public subscript(key: AnyHashable) -> String? {
        get {
            if let value = additionalProperties[key] {
                return value
            }
            return nil
        }

        set {
            additionalProperties[key] = newValue
        }
    }
    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()

        for (key, value) in additionalProperties {
            if let key = key as? String {
               nillableDictionary[key] = value
            }
        }

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

