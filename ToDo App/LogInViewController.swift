//
//  LogInViewController.swift
//  ToDo App
//
//  Created by German Ostaszynski on 4/26/15.
//  Copyright (c) 2015 Ostaszynski & Rehmann. All rights reserved.
//

import UIKit
import Parse

class LogInViewController: UIViewController {
    
     // ----------------------------- SIGNUP ------------------------

    @IBOutlet weak var newUsername: UITextField!
    @IBOutlet weak var newPassword: UITextField!
    @IBOutlet weak var newEmail: UITextField!
    @IBOutlet weak var createNewUser: UIButton!
    
    // Save data and create new user
    @IBAction func saveSignUpData(sender: AnyObject) {
        func myMethod() {
            var user = PFUser()
            user.username = newUsername.text
            user.password = newPassword.text
            user.email = newEmail.text
            
            user.signUpInBackgroundWithBlock {
                (succeeded: Bool, error: NSError?) -> Void in
                if let error = error {
                    let errorString = error.userInfo?["error"] as? NSString
                    // Show the errorString somewhere and let the user try again.
                } else {
                    println("NEW USER! :)")
                    // Hooray! Let them use the app now.
                }
            }
        }
        
    }
    
    
    // ----------------------------- LOGIN ------------------------
    
    
    @IBOutlet weak var existingUsername: UITextField!
    @IBOutlet weak var existingPassword: UITextField!
    @IBOutlet weak var checkForExistingUser: UIButton!
    
    
    @IBAction func logInChecker(sender: AnyObject) {
        
        
        PFUser.logInWithUsernameInBackground(existingUsername.text, password:existingPassword.text) {
            (user: PFUser?, error: NSError?) -> Void in
            if user != nil {
                // Do stuff after successful login.
            } else {
                // The login failed. Check error to see why.
            }
        }
        
    }
    
    
    
    // ----------------------------- LOGOUT ------------------------

    
    @IBOutlet weak var logOutButton: UIButton!
    
    @IBAction func logOut(sender: AnyObject) {
        PFUser.logOut()
        var currentUser = PFUser.currentUser() // this will now be nil
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
    
}
