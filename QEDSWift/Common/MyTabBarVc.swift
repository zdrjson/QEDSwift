//
//  MyTabBarVc.swift
//  9.27_一般app基本框架(swift)
//
//  Created by 张德荣 on 15/9/27.
//  Copyright © 2015年 JsonZhang. All rights reserved.
//

import UIKit

class MyTabBarVc: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.translucent = true;
        
        setupChildVcs()
    }
    //设置子控制器
    private func setupChildVcs()
    {
       //FirstVc 
        setupChildVc(vc: FirstVc(), title: "发现", imageName: "ic_discover_1", selectedImageName: "ic_discover_2")
        //SecondVc
        setupChildVc(vc: SecondVc(), title: "投资产品", imageName: "ic_product_1", selectedImageName: "ic_product_2")
        //ThirdVc
        setupChildVc(vc: ThirdVc(), title: "我的资产", imageName: "ic_assets_1", selectedImageName: "ic_assets_2")
        //FourthVc
        setupChildVc(vc: FourthVc(), title: "我要融资", imageName: "ic_financing_1", selectedImageName: "ic_financing_2")
    }
    
    private func setupChildVc(vc vc :UIViewController,title : String, imageName : String, selectedImageName : String){
        vc.tabBarItem = UITabBarItem(title: title, image: UIImage(named: imageName), selectedImage: UIImage(named: selectedImageName)?.imageWithRenderingMode(.AlwaysOriginal))
        vc.title = title
        
        let textAttrs : [String: AnyObject]? = [NSForegroundColorAttributeName:UIColor(red: 0.58, green: 0.58, blue: 0.58, alpha: 1.00),NSFontAttributeName:UIFont.systemFontOfSize(11)]
        let selecteTextAttrs : [String: AnyObject] = [NSForegroundColorAttributeName: UIColor(red: 0.91, green: 0.20, blue: 0.30, alpha: 1.00),NSFontAttributeName:UIFont.systemFontOfSize(11)]
        
        vc.tabBarItem.setTitleTextAttributes(textAttrs, forState: .Normal)
        vc.tabBarItem.setTitleTextAttributes(selecteTextAttrs, forState: .Selected)
        addChildViewController(NavVc(rootViewController: vc))
    }

  
}


