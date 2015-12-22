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
        
        self.title = "用户名登录"
        

    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        

    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(true)
        self.navigationController?.navigationBarHidden = false
    }
    
    override func viewWillDisappear(animated: Bool)
    {
        super.viewWillDisappear(true)
        self.navigationController?.navigationBarHidden = true
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
    
    

}
