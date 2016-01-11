//
//  QEDCommonModel.swift
//  QEDSWift
//
//  Created by 张德荣 on 16/1/11.
//  Copyright © 2016年 JsonZhang. All rights reserved.
//

import UIKit
private let instance = QEDUserLevelModel()
public class QEDUserLevelModel {
    public class var shareQEDUserLevelModel: QEDUserLevelModel {
        return instance
    }

    /** 用户成功推荐人数 */
     var picked_user_count: String?
    /** 用户等级  */
     var userLevelName: String?
    /** 用户成功推荐人id集合  */
     var picked_user_ids: String?
    
     var ID: String?
    /** 用户等级ID */
     var user_level_id: String?
    /** 用户ID  */
     var user_level_user_tid: String?
    
     var last_update_time: String?
    /** 用户在投金额 */
     var producting_amount: String?
    /** 最后修改时间 */
     var last_update_time_str: String?
    /** 用户当前等级推荐新用户可以得到的奖励  */
    var lucky_money: String?
    /** 日均投资金额 */
    var amount_per_day: String?
    /** 有效推荐用户数量 */
    var amount_order_ids: String?
    
    

}


