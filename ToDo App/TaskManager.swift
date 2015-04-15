//
//  TaskManager.swift
//  ToDo App
//
//  Created by Luke Stephen Rehmann on 1/16/15.
//  Copyright (c) 2015 Ostaszynski & Rehmann. All rights reserved.
//


import UIKit



var taskMgr = TaskManager()

struct task{
    var name="Add Task Name"
    var desc="Add Task Desc"
    
    
}

class TaskManager: NSObject {
    var tasks = [task]()
    func addTask(name:String, desc:String){
        tasks.append(task(name:name, desc:desc))
        
    }
    
}