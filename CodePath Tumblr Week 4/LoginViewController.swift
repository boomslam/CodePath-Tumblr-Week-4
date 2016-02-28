//
//  LoginViewController.swift
//  CodePath Tumblr Week 4
//
//  Created by Jess Lam on 2/26/16.
//  Copyright © 2016 Jess Lam. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
    }
    
    @IBAction func didTapCancel(sender: AnyObject) {
        
//        let seconds = 0.8
//        let delay = seconds * Double(NSEC_PER_SEC)  // nanoseconds per seconds
//        let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
//        
//        dispatch_after(dispatchTime, dispatch_get_main_queue(), {
//            
//            self.dismissViewControllerAnimated(true, completion: nil)
//        })
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }

    @IBAction func didTapBackground(sender: AnyObject) {
        view.endEditing(true)
        
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
