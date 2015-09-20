//
//  TestTimeViewController.swift
//  BabyNoggin
//
//  Created by Jože Ws on 9/19/15.
//  Copyright © 2015 JožeWs. All rights reserved.
//

import UIKit

class TestTimeViewController: UIViewController {

    @IBOutlet weak var instructionsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set rounded corners of view
        
        instructionsView.layer.cornerRadius = 10
        instructionsView.layer.masksToBounds = true
        
        // set transparency to view

        instructionsView.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.2)

    }

    @IBAction func nextStep(sender: UIButton) {
        
        // present Review VC

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("Review") as! ReviewViewController
        self.presentViewController(vc, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func backButton(sender: UIBarButtonItem) {
        
        // present TestOverview VC
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("TestOverview") as! TestOverviewViewController
        self.presentViewController(vc, animated: true, completion: nil)
        
    }


}
