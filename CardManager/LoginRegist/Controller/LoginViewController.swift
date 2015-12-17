//
//  LoginViewController.swift
//  CardManager
//
//  Created by yang on 15/12/16.
//  Copyright © 2015年 yang. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

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
    
    
    @IBAction func closeLogin(sender: UIButton)
    {
        self.dismissViewControllerAnimated(true)
        { () -> Void in
            
        }
    }
    
    

    

}
