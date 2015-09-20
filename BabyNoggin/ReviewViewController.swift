//
//  ReviewViewController.swift
//  BabyNoggin
//
//  Created by Jože Ws on 9/19/15.
//  Copyright © 2015 JožeWs. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet weak var babyTurnsButton: UIButton!
    @IBOutlet weak var babyUnableToLift: UIButton!
    @IBOutlet weak var babyMoveArms: UIButton!
    @IBOutlet weak var babyDoesntMoveArms: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // set rounded corners to buttons
        
        babyTurnsButton.layer.cornerRadius = 10
        babyTurnsButton.layer.masksToBounds = true
        
        babyUnableToLift.layer.cornerRadius = 10
        babyUnableToLift.layer.masksToBounds = true
        
        babyMoveArms.layer.cornerRadius = 10
        babyMoveArms.layer.masksToBounds = true
        
        babyDoesntMoveArms.layer.cornerRadius = 10
        babyDoesntMoveArms.layer.masksToBounds = true
        
        // set transparency to buttons
        
        babyTurnsButton.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.2)
        babyUnableToLift.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.2)
        babyMoveArms.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.2)
        babyDoesntMoveArms.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.2)
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func babyTurns(sender: UIButton) {
        
        // present GoodJob VC
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("GoodJob") as! GoodJobViewController
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    @IBAction func babyUnableToLift(sender: UIButton) {
        
        // present FurtherInfo VC

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("FurtherInfo") as! FurtherInfoViewController
        self.presentViewController(vc, animated: true, completion: nil)
    }

    @IBAction func babyMoveArms(sender: UIButton) {
    
        // present FurtherInfo VC

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("FurtherInfo") as! FurtherInfoViewController
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    @IBAction func babyDoesntMoveArms(sender: UIButton) {
        
        // present FurtherInfo VC

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("FurtherInfo") as! FurtherInfoViewController
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    @IBAction func backButton(sender: UIBarButtonItem) {
        
        // present TestTime VC

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("TestTime") as! TestTimeViewController
        self.presentViewController(vc, animated: true, completion: nil)
        
    }
}
