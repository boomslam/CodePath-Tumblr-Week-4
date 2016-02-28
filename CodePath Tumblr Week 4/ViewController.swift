//
//  ViewController.swift
//  CodePath Tumblr Week 4
//
//  Created by Jess Lam on 2/24/16.
//  Copyright © 2016 Jess Lam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var exploreView: UIImageView!
    
    
    //outlet for array of buttons
    @IBOutlet var buttons: [UIButton]!
    
    //variable for arrary of view controllers
    var viewControllers: [UIViewController]!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
//    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    //keeps track of button that was selected. Will link buttons tag value to variable.
    var selectedIndex: Int = 0
    
    //Define cusstom transition variable
    var fadeTransition: FadeTransition!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Add view controllers to tab bar view controller
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
//        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        //Add view controllers to viewControllers array. Removed compose view controller.
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //All tab buttons share this action
    @IBAction func didPressTab(sender: UIButton) {
        
        //Keep track of previous button
        let previousIndex = selectedIndex
        
        //Sets tag value for selected button
        selectedIndex = sender.tag
        
        //Set previous button to non-selected
        buttons[previousIndex].selected = false
        print("unselected button")
        
        //Access previous view controller from array
        let previousVC = viewControllers[previousIndex]
        
        //Remove previous view controller
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        //Set current selected button to selected
        sender.selected = true
        
        //Access current view controller from array
        var vc = viewControllers[selectedIndex]
        
        //Add new view controllers
        addChildViewController(vc)
        
        //Adjust size of vc to match contentView and add it as subview to contentView
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        //Call viewDidAppear method of vc being added
        vc.didMoveToParentViewController(self)
        
//        if searchViewController == vc {
//            
//            self.exploreView.alpha = 0
//            
//        } else {
//            
//            self.exploreView.alpha = 1
//        }
        
        
        self.exploreView.alpha = 1
        if searchViewController == vc {
        UIView.animateWithDuration(0.4, animations: {
            // This causes first view to fade in and second view to fade out
            self.exploreView.alpha = 0
            })
        } else {
            self.exploreView.alpha = 1
        }
        
        
    }
}

//    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//    
//    // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController.
//    var destinationViewController = segue.destinationViewController
//    
//    // Set the modal presentation style of your destinationViewController to be custom.
//    destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
//    
//    // Create a new instance of your fadeTransition.
//    fadeTransition = FadeTransition()
//    
//    // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
//    destinationViewController.transitioningDelegate = fadeTransition
//    
//    // Adjust the transition duration. (seconds)
//    fadeTransition.duration = 1.0
//}

