//
//  ViewController.swift
//  Example
//
//  Created by Larry Borsato on 2018-09-10.
//  Copyright © 2018 Boomtown. All rights reserved.
//

import UIKit
import SwaggerClient
import Alamofire

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {    
    
    let kApiToken       = "__API_TOKEN__"
    let kApiPrivateKey  = "__API_PRIVATE_KEY__"
    
    var tableView: UITableView?
    var orgs: [Org] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView.init(frame:self.view.bounds)
        tableView?.dataSource               = self as UITableViewDataSource
        tableView?.delegate                 = self as UITableViewDelegate
        tableView?.autoresizesSubviews      = true
        tableView?.autoresizingMask         = UIViewAutoresizing(rawValue: UIViewAutoresizing.flexibleWidth.rawValue | UIViewAutoresizing.flexibleHeight.rawValue)
        tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tableView!)
        
        getOrg()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func getOrg() {
        let request = OrgsAPI.getOrgWithRequestBuilder()
        request.sign(token: kApiToken, secret: kApiPrivateKey)
        request.execute { (response, error) in
            if error == nil {
                if response?.body?.success == true {
                    if let orgs = response?.body?.results {
                        for org in orgs {
                            self.orgs.append(org)
                        }
                        self.tableView?.reloadData()
                    }
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
                print(error.debugDescription)
            }
        }
    }
    
    
    // MARK: - Data Sources and Delegates
    
    func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        // Return the number of sections.
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orgs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath)
        let row = indexPath.row
        let org = self.orgs[row]
        if let name = org.name, let city = org.city {
            cell.textLabel?.text = "\(name), \(city)"
        } else {
            cell.textLabel?.text = "Unknown org"
        }
        return cell
    }
    

}

