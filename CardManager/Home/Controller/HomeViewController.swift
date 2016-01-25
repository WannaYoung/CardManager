//
//  HomeViewController.swift
//  CardManager
//
//  Created by yang on 15/12/16.
//  Copyright © 2015年 yang. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.presentLogin()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }
    
    func presentLogin()
    {
        let loginNav:UINavigationController = self.storyboard!.instantiateViewControllerWithIdentifier("loginnav") as! UINavigationController
        
        self.presentViewController(loginNav, animated: true)
            { () -> Void in
            
        }
        
    }

    @IBAction func addCard(sender: UIBarButtonItem)
    {
        let tumblrMenu:CHTumblrMenuView = CHTumblrMenuView()
        
        tumblrMenu .addMenuItemWithTitle("银行卡", andIcon: UIImage(named: "item1"))
        { () -> Void in
        }
        tumblrMenu .addMenuItemWithTitle("账户", andIcon: UIImage(named: "item2"))
            { () -> Void in
        }
        tumblrMenu .addMenuItemWithTitle("会员卡", andIcon: UIImage(named: "item3"))
            { () -> Void in
        }
        tumblrMenu .addMenuItemWithTitle("身份证", andIcon: UIImage(named: "item4"))
            { () -> Void in
        }
        tumblrMenu .addMenuItemWithTitle("护照", andIcon: UIImage(named: "item5"))
            { () -> Void in
        }
        tumblrMenu .addMenuItemWithTitle("笔记本", andIcon: UIImage(named: "item6"))
            { () -> Void in
        }
        tumblrMenu .addMenuItemWithTitle("提醒", andIcon: UIImage(named: "item7"))
            { () -> Void in
        }
        tumblrMenu .addMenuItemWithTitle("纪念日", andIcon: UIImage(named: "item8"))
            { () -> Void in
        }
        tumblrMenu .addMenuItemWithTitle("更多", andIcon: UIImage(named: "item9"))
            { () -> Void in
                let typeVC:TypeViewController = self.storyboard?.instantiateViewControllerWithIdentifier("typeID") as! TypeViewController
                self.navigationController?.pushViewController(typeVC, animated: true)
        }
        tumblrMenu.show()
    }
    
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 20
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)


        return cell
    }
    

}
