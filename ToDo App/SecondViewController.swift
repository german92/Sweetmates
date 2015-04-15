//
//  SecondViewController.swift
//  ToDo App
//
//  Created by Luke Stephen Rehmann on 1/16/15.
//  Copyright (c) 2015 Ostaszynski & Rehmann. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {
    
    
    @IBOutlet weak var txtTask: UITextField!
    
    @IBOutlet weak var txtDesc: UITextField!
    
    
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) -> UIViewController {
        self.view.endEditing(true)
    }
    
    
    @IBAction func buttonAddTask(sender: AnyObject) {
        taskMgr.addTask(txtTask.text,desc:txtDesc.text)
        self.view.endEditing(true)
        txtTask.text=""
        txtDesc.text=""
        self.tabBarController?.selectedIndex=0
        
        
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true;
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

