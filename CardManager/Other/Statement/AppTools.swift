//
//  AppTools.swift
//  CardManager
//
//  Created by yang on 15/12/18.
//  Copyright © 2015年 yang. All rights reserved.
//

import UIKit

class AppTools: NSObject
{
    
    class func showHudFor1Point8(title:String)
    {
        self.showHudWithTitleAfterDelay(title, message: "", interval: 1.8)
    }
    
    
    class func showHudWithTitleAfterDelay(title:String ,message:String, interval:Double)
    {
        MBProgressHUD.hideAllHUDsForView(self.systemWindow(), animated: false)
        let hud:MBProgressHUD = MBProgressHUD.showHUDAddedTo(self.systemWindow(), animated: false)
        hud.mode = MBProgressHUDMode.Text
        hud.userInteractionEnabled = false
        hud.labelText = title
        hud.detailsLabelText = message
        hud.labelFont = UIFont.systemFontOfSize(14.0)
        
        hud.margin = 10.0
        hud.yOffset = -45.0
        hud.removeFromSuperViewOnHide = true
        self.systemWindow().bringSubviewToFront(hud)
        hud.hide(false, afterDelay: interval)
        
    }
    
    class func showHudWithText(hudText:String)
    {
        MBProgressHUD.hideAllHUDsForView(self.systemWindow(), animated: false)
        let hud:MBProgressHUD = MBProgressHUD.showHUDAddedTo(self.systemWindow(), animated: false)
        hud.labelText = hudText
        hud.labelFont = UIFont.systemFontOfSize(14.0)
    }
    
    class func hideAllHudOnWindow()
    {
        MBProgressHUD.hideAllHUDsForView(self.systemWindow(), animated: false)
    }
    
    
    class func systemWindow() ->UIWindow
    {
        let window:UIWindow = UIApplication.sharedApplication().keyWindow!
        
        return window
    }

}



