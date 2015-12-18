//
//  LoginViewController.swift
//  CardManager
//
//  Created by yang on 15/12/16.
//  Copyright © 2015年 yang. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController
{
    
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        

    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        

    }
    
    @IBAction func gotoRegist(sender: UIButton)
    {
        let registVC:RegistViewController = self.storyboard?.instantiateViewControllerWithIdentifier("regist") as! RegistViewController
        
        self.navigationController?.pushViewController(registVC, animated: true)
        
    }
    
    
    @IBAction func clickLogin(sender: UIButton)
    {
        AppTools.showHudWithText("")
        
        AVUser.logInWithUsernameInBackground(nameTF.text, password: passwordTF.text) { (newUser:AVUser!, error:NSError!) -> Void in
            
            if(newUser == nil)
            {
                AppTools.showHudFor1Point8(String(error.userInfo["NSLocalizedDescription"]))
                
            }
            else
            {
                self.dismissViewControllerAnimated(true)
                    { () -> Void in
                        AppTools.showHudFor1Point8("登录成功")
                }
                
            }
        }
    }
    
    
    @IBAction func closeLogin(sender: UIButton)
    {
        self.dismissViewControllerAnimated(true) { () -> Void in
            
        }
     
    }
    
    

    

}
