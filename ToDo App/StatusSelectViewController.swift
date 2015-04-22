//
//  StatusSelectViewController.swift
//  ToDo App
//
//  Created by Jake Wayne on 4/15/15.
//  Copyright (c) 2015 Ostaszynski & Rehmann. All rights reserved.
//

import UIKit

class StatusSelectViewController: UIViewController {

    //Base code for status by clicking button
    
    
    @IBOutlet weak var currentStatus: UILabel!
    @IBOutlet weak var studyStatus: UIButton!
    @IBOutlet weak var sleepStatus: UIButton!
    @IBOutlet weak var friendOverStatus: UIButton!
    @IBOutlet weak var busyStatus: UIButton!
    @IBOutlet weak var examStatus: UIButton!
    @IBOutlet weak var availableStatus: UIButton!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        currentStatus.text = "Studying"
    }
    
    @IBAction func changeSleepingStatus(sender: AnyObject) {
        currentStatus.text = "Sleeping"
    }
    
    
    @IBAction func changeFriendOverStatus(sender: AnyObject) {
        currentStatus.text = "Friend(s) Over"
    }
    
    @IBAction func changeBusyStatus(sender: AnyObject) {
        currentStatus.text = "Busy"
    }
    
    @IBAction func changeExamStatus(sender: AnyObject) {
        currentStatus.text = "Exam Tomorrow"

    }
    
    @IBAction func changeAvailableStatus(sender: AnyObject) {
          currentStatus.text = "Available"
    }
    
    
    
    //-------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
