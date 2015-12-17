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
    @IBOutlet weak var passwordTF: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func gotoLogin(sender: UIButton)
    {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    @IBAction func clickRegist(sender: UIButton)
    {
        if (!emailTF.text!.isEmpty && !passwordTF.text!.isEmpty)
        {
            let newUser:AVUser = AVUser()
            newUser.username = emailTF.text
            newUser.password = passwordTF.text
            
            newUser.signUpInBackgroundWithBlock(
                { (succeeded:Bool, error:NSError!) -> Void in
                
                AVUser .logInWithUsernameInBackground(newUser.username, password: newUser.password, block:
                    { (user:AVUser!, error:NSError!) -> Void in
                    self.dismissViewControllerAnimated(true, completion:
                        { () -> Void in
                        
                    })
                })
            })
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
