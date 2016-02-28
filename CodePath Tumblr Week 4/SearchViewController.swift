//
//  SearchViewController.swift
//  CodePath Tumblr Week 4
//
//  Created by Jess Lam on 2/24/16.
//  Copyright © 2016 Jess Lam. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
  
    @IBOutlet weak var searchFeedView: UIImageView!
//    @IBOutlet weak var loadingView1: UIImageView!
//    @IBOutlet weak var loadingView2: UIImageView!
//    @IBOutlet weak var loadingView3: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    

    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    
    var images: [UIImage]!
    var animatedImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        
        images = [loading_1, loading_2, loading_3]
        
        animatedImage = UIImage.animatedImageWithImages(images, duration: 1.0)
        
        imageView.image = animatedImage

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        searchFeedView.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        // Delay for 2 seconds, then run the code between the braces.
        delay(2) {
            self.searchFeedView.alpha = 1
            self.imageView.alpha = 0
        }
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
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
