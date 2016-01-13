//
//  FirstVc.swift
//  9.27_一般app基本框架(swift)
//
//  Created by 张德荣 on 15/9/27.
//  Copyright © 2015年 JsonZhang. All rights reserved.
//

import UIKit
import Alamofire
class FirstVc: UIViewController ,UITableViewDelegate,UITableViewDataSource {

    var dataArray = [String]()
    
    var netIsRuning = false
    
    var orderId = 0
    
    var toIndex = 0
    
    var page = 1;
    
    var isAsc = true
    
    private lazy var tableViewHeaderView : UIView = {
        let tableViewHeaderView: UIView = UIView()
        tableViewHeaderView.backgroundColor = UIColor.redColor()
        return tableViewHeaderView
    }()
    
    private lazy var tableView : UITableView = {
        let tableView : UITableView = UITableView(frame: UIScreen.mainScreen().bounds, style: .Plain)
        tableView.separatorStyle = .None
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.prepareData(self.orderId)
        view.addSubview(tableView)
        
    }

    func prepareData(orderId: Int) {
        guard (!netIsRuning) else {
            return
        }
        netIsRuning = true
        /*
        @{@"pagenum":@(_page),
        @"pagesize":@(QEDPageSize),
        @"sort":!self.isAsc?@"ASC":@"DESC",
        @"order":@(orderId),
        @"type":@0,
        @"userId":[QEDloginTool isLogin]?[QEDLoginUserModel sharedQEDLoginUserModel].ID:@""};
        
        */
        let params : [String : AnyObject]? = ["pagenum":page,
                                              "pagesize":5,
                                              "sort":!self.isAsc ? "ASC" : "DESC",
                                              "order":orderId,
                                              "userId":"",
                                              "type":"0"]
        print(params)
        print(JAVA_API_Server + "products/getProductInfo")
        Alamofire.request(.POST,  JAVA_API_Server + "app/products/getProductInfo", parameters: params, encoding: .JSON).responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
        

    }
}

extension FirstVc {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
