//
//  FirstVc.swift
//  9.27_一般app基本框架(swift)
//
//  Created by 张德荣 on 15/9/27.
//  Copyright © 2015年 JsonZhang. All rights reserved.
//

import UIKit

class FirstVc: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    var dataArray = [String]()
    var netIsRuning = true
    private lazy var tableViewHeaderView : UIView = {
        let tableViewHeaderView: UIView = UIView()
        tableViewHeaderView.backgroundColor = UIColor.redColor()
        return tableViewHeaderView
    }()
    private lazy var tableView : UITableView = {
        let tableView : UITableView = UITableView()
//        tableView.init
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.tableHeaderView =
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(tableView)

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
