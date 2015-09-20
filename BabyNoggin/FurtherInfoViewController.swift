//
//  FurtherInfoViewController.swift
//  BabyNoggin
//
//  Created by Jože Ws on 9/19/15.
//  Copyright © 2015 JožeWs. All rights reserved.
//

import UIKit

class FurtherInfoViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func backButton(sender: UIBarButtonItem) {
        
        // present Review VC

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("Review") as! ReviewViewController
        self.presentViewController(vc, animated: true, completion: nil)
    }
}
