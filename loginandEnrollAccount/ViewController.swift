//
//  ViewController.swift
//  loginandEnrollAccount
//
//  Created by Raheem Chisman on 1/26/25.
//

import UIKit
import IntuneMAMSwift




class ViewController: UIViewController {
    @IBOutlet weak var logInBtn: UIButton!
    @IBOutlet weak var getLogs: UIButton!
    @IBOutlet weak var unEnroll: UIButton!
    @IBOutlet weak var getUPN: UIButton!
    
    /*
     Button action triggered when user presses the log in button
     
     Sends the user through the Intune Authentication flow for logging in.
     Triggers the "homePage" segue if login is successful; raises an alert if there is an error.
    */
    
    
    @IBAction func logInBtn(_ sender: Any) {
        //Set the delegate of the IntuneMAMEnrollmentManager as an instance of the EnrollmentDelegateClass to check the status of attempted enrollments. Also initialize this class with the current view controller
        //This is done on launch, but here it is done again to give the delegate the current view controller
        let enrollmentDelegate = EnrollmentDelegate.init(viewController: self)
        IntuneMAMEnrollmentManager.instance().delegate = enrollmentDelegate
        
        //Login the user through the Intune sign in flow. EnrollmentDelegateClass will handle the outcome of this.
        IntuneMAMEnrollmentManager.instance().loginAndEnrollAccount(nil)
    }
    
    @IBAction func getLogs(_ sender: Any) {
        IntuneMAMDiagnosticConsole.display()
    }
    
    
    @IBAction func unEnroll(_ sender: Any) {
              let enrolledAccountId = IntuneMAMEnrollmentManager.instance().enrolledAccountId()
                print("Starting unEnrollment forObjectid:" + enrolledAccountId!)
        IntuneMAMEnrollmentManager.instance().deRegisterAndUnenrollAccountId(enrolledAccountId!, withWipe: false)
    }

    @IBAction func getUPN(_ sender: Any) {
        let enrolledAccountId = IntuneMAMEnrollmentManager.instance().enrolledAccountId()
        print("Starting getUPN forObjectid:" + enrolledAccountId!)
        
        
        
        
    }

}

