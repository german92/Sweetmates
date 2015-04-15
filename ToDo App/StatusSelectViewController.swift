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

    @IBOutlet weak var studyStatus: UIButton!

    @IBAction func buttonPressed(sender: AnyObject) {
        println(studyStatus.titleLabel!.text)
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
