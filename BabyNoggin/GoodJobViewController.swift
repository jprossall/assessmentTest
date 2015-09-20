//
//  GoodJobViewController.swift
//  BabyNoggin
//
//  Created by Jože Ws on 9/19/15.
//  Copyright © 2015 JožeWs. All rights reserved.
//

import UIKit

class GoodJobViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButton(sender: UIBarButtonItem) {
        
        // present Review VC

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("Review") as! ReviewViewController
        self.presentViewController(vc, animated: true, completion: nil)
    }
}
