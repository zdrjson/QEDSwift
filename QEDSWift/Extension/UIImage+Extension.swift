//
//  UIImage+Extension.swift
//  QEDSWift
//
//  Created by 张德荣 on 15/11/16.
//  Copyright © 2015年 JsonZhang. All rights reserved.
//

import UIKit

extension UIImage
{
   class func imageWithColor(color : UIColor?) -> UIImage?
    {
        let imageW : CGFloat = 100
        let imageH : CGFloat = 100
        
        UIGraphicsBeginImageContextWithOptions(CGSize(width: imageW, height: imageH), false, 0.0)
        
        color!.set()
        
        UIRectFill(CGRect(x: 0, y: 0, width: imageW, height: imageH))
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return image
        
    }


}