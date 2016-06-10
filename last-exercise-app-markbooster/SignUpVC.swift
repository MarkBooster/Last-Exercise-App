//
//  SignUpVC.swift
//  last-exercise-app-markbooster
//
//  Created by Mark Booster on 09-06-16.
//  Copyright © 2016 Mark Booster. All rights reserved.
//

import UIKit
import Firebase

class SignUpVC: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
//    @IBAction func createAccount(sender: AnyObject) {
//        let username = usernameField.text
//        let email = emailField.text
//        let password = passwordField.text
//        
//        if username != "" && email != "" && password != "" {
//            
//            // Set Email and Password for the New User.
//            
//            DataService.dataService.BASE_REF.createUser(email, password: password, withValueCompletionBlock: { error, result in
//                
//                if error != nil {
//                    
//                    // There was a problem.
//                    self.signupErrorAlert("Oops!", message: "Having some trouble creating your account. Try again.")
//                    
//                } else {
//                    
//                    // Create and Login the New User with authUser
//                    DataService.dataService.BASE_REF.authUser(email, password: password, withCompletionBlock: {
//                        err, authData in
//                        
//                        let user = ["provider": authData.provider!, "email": email!, "username": username!]
//                        
//                        // Seal the deal in DataService.swift.
//                        DataService.ds.createNewAccount(authData.uid, user: user)
//                    })
//                    
//                    // Store the uid for future access - handy!
//                    NSUserDefaults.standardUserDefaults().setValue(result ["uid"], forKey: "uid")
//                    
//                    // Enter the app.
//                    self.performSegueWithIdentifier("NewUserLoggedIn", sender: nil)
//                }
//            })
//            
//        } else {
//            signupErrorAlert("Oops!", message: "Don't forget to enter your email, password, and a username.")
//        }
//        
//    }

    @IBAction func cancelBtnPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
