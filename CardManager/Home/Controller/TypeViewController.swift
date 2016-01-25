//
//  TypeViewController.swift
//  CardManager
//
//  Created by yang on 16/1/25.
//  Copyright © 2016年 yang. All rights reserved.
//

import UIKit

class TypeViewController: UITableViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()

        
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
        return  20
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("type", forIndexPath: indexPath)


        return cell
    }


}
