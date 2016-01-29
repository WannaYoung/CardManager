//
//  TypeViewController.swift
//  CardManager
//
//  Created by yang on 16/1/25.
//  Copyright © 2016年 yang. All rights reserved.
//

import UIKit

class TypeViewController: UITableViewController {
    
    let path:String = NSBundle.mainBundle().pathForResource("bank", ofType: "plist")!
    var bankArray:NSArray = NSArray()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        bankArray = NSArray(contentsOfFile: path)!
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return  bankArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("type", forIndexPath: indexPath)
        
        let bankDict:NSDictionary = bankArray[indexPath.row] as! NSDictionary
        
        let title:UILabel = cell.viewWithTag(12) as! UILabel
        let logo:UIImageView = cell.viewWithTag(11) as! UIImageView
        
        title.text = bankDict["title"] as? String
        logo.image = UIImage(named: bankDict["logo"] as! String)
        

        return cell
    }


}
