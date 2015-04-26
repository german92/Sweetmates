//
//  FirstViewController.swift
//  ToDo App
//
//  Created by Luke Stephen Rehmann on 1/16/15.
//  Copyright (c) 2015 Ostaszynski & Rehmann. All rights reserved.
//

import UIKit
import Parse

class FirstViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tasksTable: UITableView!
    
    override func viewWillAppear(animated: Bool) {
        tasksTable.reloadData()
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if(editingStyle==UITableViewCellEditingStyle.Delete){
            taskMgr.tasks.removeAtIndex(indexPath.row)
            tasksTable.reloadData()
            
        }
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return taskMgr.tasks.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cell: UITableViewCell=UITableViewCell(style:UITableViewCellStyle.Subtitle,reuseIdentifier: "test")
        cell.textLabel?.text=taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel?.text=taskMgr.tasks[indexPath.row].desc
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let user = PFUser()
        user.username = "my name"
        user.password = "my pass"
        user.email = "email@example.com"
        
        // other fields can be set if you want to save more information
        user["phone"] = "650-555-0000"
        
        user.signUpInBackgroundWithBlock { (success, error) in
            if error == nil {
                // Hooray! Let them use the app now.
            } else {
                // Examine the error object and inform the user.
            }
        }
        
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

