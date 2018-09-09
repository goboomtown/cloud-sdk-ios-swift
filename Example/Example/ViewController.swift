//
//  ViewController.swift
//  Example
//
//  Created by Larry Borsato on 2018-09-07.
//  Copyright © 2018 Boomtown. All rights reserved.
//

import UIKit
import SwaggerClient
import Alamofire

class ViewController: UIViewController {    

    let kApiToken   = "042F0714883D378313F8" //"8BC14C0795C372FF663C"
    let kApiSecret  = "22d245384b8279f1c9cc3ccfa51d8d0a5a7b0161" //"34959b0274d79ac3f12c7daded059401a000a58b"

    override func viewDidLoad() {
        super.viewDidLoad()

        getOrg()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func getOrg() {
        let request = OrgsAPI.getOrgWithRequestBuilder()
        signRequest(request)
        request.execute { (response, error) in
            if error == nil {
                if response?.body?.success == true {
                    let org = response?.body?.results?.first
                    print("Organization: " + (org?.name!)!)
                } else {
                    print("Unable to retrieve organization information.")
                }
            } else {
                switch( error! ) {
                case .HttpError(statusCode: let statusCode, data: _, error: let httpError):
                    print(statusCode)
                    print(httpError.localizedDescription)
                default:
                    print("Request failed")
                }                
            }
        }
    }
    
    // MARK: - Signature
    
    private func signRequest<T>(_ request: RequestBuilder<T>) {
        let URL = NSURL.init(string: request.URLString)
        let date = iso8601Date()
        var path = (URL?.path)!
        if let query = URL?.query {
            path += query
        }
        let canonicalizedResource = String.init(format: "%@:%@", path, date)
        let signature             = hmacSha256(canonicalizedResource, kApiSecret)
        
        request.addHeader(name: "X-Boomtown-Date",      value: date)
        request.addHeader(name: "X-Boomtown-Token",     value: kApiToken)
        request.addHeader(name: "X-Boomtown-Signature", value: signature)
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

