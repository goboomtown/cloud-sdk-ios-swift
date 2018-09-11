//
//  Extensions.swift
//  Example
//
//  Created by Larry Borsato on 2018-09-11.
//  Copyright © 2018 Boomtown. All rights reserved.
//

import UIKit
import Alamofire
import SwaggerClient

extension RequestBuilder {
    func sign(token: String, secret: String) {
        let URL = NSURL.init(string: self.URLString)
        let date = iso8601Date()
        var path = (URL?.path)!
        if let query = URL?.query {
            path += query
        }
        let canonicalizedResource = String.init(format: "%@:%@", path, date)
        let signature             = hmacSha256(canonicalizedResource, secret)
        
        self.addHeader(name: "X-Boomtown-Date",      value: date)
        self.addHeader(name: "X-Boomtown-Token",     value: token)
        self.addHeader(name: "X-Boomtown-Signature", value: signature)
    }
    
    private func hmacSha256(_ parameter: String, _ key: String) -> String {
        let str = parameter.cString(using: .utf8)
        let strLen = Int(parameter.lengthOfBytes(using: .utf8))
        let digestLen = CC_SHA256_DIGEST_LENGTH
        let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: Int(digestLen))
        let keyStr = key.cString(using: .utf8)
        let keyLen = Int(key.lengthOfBytes(using: .utf8))        
        CCHmac(CCHmacAlgorithm(kCCHmacAlgSHA256), keyStr!, keyLen, str!, strLen, result)        
        let data = Data.init(bytes: result, count: Int(digestLen))        
        result.deallocate()        
        return data.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
    }
    
    private func iso8601Date() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        let iso8601String = dateFormatter.string(from: NSDate() as Date)
        return iso8601String;
    }    
}
