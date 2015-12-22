//
//  RegistViewController.swift
//  CardManager
//
//  Created by yang on 15/12/16.
//  Copyright © 2015年 yang. All rights reserved.
//

import UIKit

class RegistViewController: UIViewController
{
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.title = "注册"

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
    
    @IBAction func gotoLogin(sender: UIButton)
    {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    @IBAction func clickRegist(sender: UIButton)
    {
        AppTools.showHudWithText("")
        
        if (!nameTF.text!.isEmpty && !passwordTF.text!.isEmpty)
        {
            let newUser:AVUser = AVUser()
            newUser.email = emailTF.text
            newUser.username = nameTF.text
            newUser.password = passwordTF.text
            
            newUser.signUpInBackgroundWithBlock(
                { (succeeded:Bool, error:NSError!) -> Void in
                
                    if(succeeded)
                    {
                        AVUser.logInWithUsernameInBackground(newUser.username, password: newUser.password, block:
                            { (user:AVUser!, error:NSError!) -> Void in
                                
                                if(user == nil)
                                {
                                    AppTools.showHudFor1Point8(String(error.userInfo["NSLocalizedDescription"]))
                                    
                                }
                                else
                                {
                                    self.dismissViewControllerAnimated(true)
                                        { () -> Void in
                                            AppTools.showHudFor1Point8("注册成功")
                                    }
                                    
                                }
                                
                                
                        })
                        
                    }
                    else
                    {
                        AppTools.showHudFor1Point8(String(error.userInfo["NSLocalizedDescription"]))
                    }
            })
        }
    }

    
}
