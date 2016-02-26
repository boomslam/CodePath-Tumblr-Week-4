//
//  ComposeViewController.swift
//  CodePath Tumblr Week 4
//
//  Created by Jess Lam on 2/24/16.
//  Copyright © 2016 Jess Lam. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var nevermindButton: UIButton!

    var photoStartPosition: CGFloat!
    var photoOffset: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Start position for photo button
        photoStartPosition = photoButton.frame.origin.y
        photoOffset = 600

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.photoButton.center.y = 580
        self.quoteButton.center.y = 580
        self.textButton.center.y = 580
        self.chatButton.center.y = 580
        self.linkButton.center.y = 580
        self.videoButton.center.y = 580
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        //set initial offscreen position and animate buttons onto screen
//        self.photoButton.center.y = 600
        UIView.animateWithDuration(0.2, animations: { () -> Void in
            self.photoButton.center.y = 198
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.quoteButton.center.y = 198
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            self.textButton.center.y = 198
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.chatButton.center.y = 320
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.6, animations: { () -> Void in
            self.linkButton.center.y = 320
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.7, animations: { () -> Void in
            self.videoButton.center.y = 320
            }) { (Bool) -> Void in
        }
    }
    
    @IBAction func onTapDismiss(sender: AnyObject) {
        print("did tap")

        self.photoButton.center.y = 198
        UIView.animateWithDuration(0.2, animations: { () -> Void in
            self.photoButton.center.y = -300
            }) { (Bool) -> Void in
        }
        
        self.quoteButton.center.y = 198
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.quoteButton.center.y = -300
            }) { (Bool) -> Void in
        }
        
        self.textButton.center.y = 198
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            self.textButton.center.y = -300
            }) { (Bool) -> Void in
        }
        
        self.chatButton.center.y = 320
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.chatButton.center.y = -300
            }) { (Bool) -> Void in
        }
        
        self.linkButton.center.y = 320
        UIView.animateWithDuration(0.6, animations: { () -> Void in
            self.linkButton.center.y = -300
            }) { (Bool) -> Void in
        }
        
        self.videoButton.center.y = 320
        UIView.animateWithDuration(0.7, animations: { () -> Void in
            self.videoButton.center.y = -300
            }) { (Bool) -> Void in
        }
        
        let seconds = 0.8
        let delay = seconds * Double(NSEC_PER_SEC)  // nanoseconds per seconds
        let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        
        dispatch_after(dispatchTime, dispatch_get_main_queue(), {
            
            self.photoButton.center.y = -900
            self.quoteButton.center.y = -900
            self.textButton.center.y = -900
            self.chatButton.center.y = -900
            self.linkButton.center.y = -900
            self.videoButton.center.y = -900
            self.dismissViewControllerAnimated(true, completion: nil)
            
        })
        
        print(photoButton.center.y)
    }
    
    
//    @IBAction func didTapNevermind(sender: UITapGestureRecognizer) {
//         
//        if sender.state == UIGestureRecognizerState.Began {
//            
//        } else if sender.state == UIGestureRecognizerState.Changed {
//            
//            self.photoButton.center.y = 198
//            UIView.animateWithDuration(0.2, animations: { () -> Void in
//                self.photoButton.center.y = -300
//                }) { (Bool) -> Void in
//            }
//            
//            self.quoteButton.center.y = 198
//            UIView.animateWithDuration(0.3, animations: { () -> Void in
//                self.quoteButton.center.y = -300
//                }) { (Bool) -> Void in
//            }
//            
//            self.textButton.center.y = 198
//            UIView.animateWithDuration(0.4, animations: { () -> Void in
//                self.textButton.center.y = -300
//                }) { (Bool) -> Void in
//            }
//            
//            self.chatButton.center.y = 320
//            UIView.animateWithDuration(0.5, animations: { () -> Void in
//                self.chatButton.center.y = -300
//                }) { (Bool) -> Void in
//            }
//            
//            self.linkButton.center.y = 320
//            UIView.animateWithDuration(0.6, animations: { () -> Void in
//                self.linkButton.center.y = -300
//                }) { (Bool) -> Void in
//            }
//            
//            self.videoButton.center.y = 320
//            UIView.animateWithDuration(0.7, animations: { () -> Void in
//                self.videoButton.center.y = -300
//                }) { (Bool) -> Void in
//            }
//
//          
//            
//        } else if sender.state == UIGestureRecognizerState.Ended {
//            
//            self.photoButton.center.y = -300
//            self.quoteButton.center.y = -300
//            self.textButton.center.y = -300
//            self.chatButton.center.y = -300
//            self.linkButton.center.y = -300
//            self.videoButton.center.y = -300
//            
//            let seconds = 0.8
//            let delay = seconds * Double(NSEC_PER_SEC)  // nanoseconds per seconds
//            let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
//            
//            dispatch_after(dispatchTime, dispatch_get_main_queue(), {
//                
//                self.dismissViewControllerAnimated(true, completion: nil)
//                
//            })
//            
//        }
//
//        
//    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
