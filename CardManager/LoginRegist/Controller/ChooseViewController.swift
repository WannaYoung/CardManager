//
//  ChooseViewController.swift
//  CardManager
//
//  Created by yang on 15/12/21.
//  Copyright © 2015年 yang. All rights reserved.
//

import UIKit

class ChooseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func loginWithUsername(sender: UIButton)
    {
        let loginVC:LoginViewController = self.storyboard?.instantiateViewControllerWithIdentifier("login") as! LoginViewController
        
        self.navigationController?.pushViewController(loginVC, animated: true)
    }
    
    
    @IBAction func gotoRegist(sender: UIButton)
    {
        let registVC:RegistViewController = self.storyboard?.instantiateViewControllerWithIdentifier("regist") as! RegistViewController
        
        self.navigationController?.pushViewController(registVC, animated: true)
    }
    
    
    @IBAction func closeChoose(sender: UIButton)
    {
        self.dismissViewControllerAnimated(true) { () -> Void in
            
        }
    }

    

}
