//
//  ViewController.swift
//  BabyNoggin
//
//  Created by Jože Ws on 9/19/15.
//  Copyright (c) 2015 JožeWs. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class TestOverviewViewController: UIViewController {

    @IBOutlet weak var movieView: UIView!
    
    @IBOutlet weak var playPauseButton: UIButton!
    
    var moviePlayer: AVPlayer

    //whether the movie player ended playing
    var moviePlayerEnded = false
    
    // load the play/stop images
    let playImage = UIImage(named: "Play.png")
    let pauseImage = UIImage(named: "Pause.png")
    
    required init(coder aDecoder: NSCoder)
    {
        self.moviePlayer = AVPlayer()
        super.init(coder: aDecoder)!;
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let playerItem = AVPlayerItem(URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("movie", ofType: "mp4")!))
        moviePlayer = AVPlayer(playerItem: playerItem)
        moviePlayer.actionAtItemEnd = .Pause
        let playerLayer = AVPlayerLayer(player: moviePlayer)
        playerLayer.frame = movieView.bounds
        movieView.layer.addSublayer(playerLayer)
        
        //adds notification when movie players ends playing
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "playerItemDidReachEnd", name: AVPlayerItemDidPlayToEndTimeNotification, object: playerItem)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func playerItemDidReachEnd() {
        
        // set play image in play/pause button

        moviePlayerEnded = true
        playPauseButton.setImage(playImage, forState: UIControlState.Normal)
    }
    
    @IBAction func playStopButton(sender: UIButton) {
        
        // if ended playing restart from beginning
        
        if moviePlayerEnded {
            moviePlayerEnded = false
            moviePlayer.seekToTime(CMTimeMake(0, 1), completionHandler: { (Bool) -> Void in
                self.moviePlayer.rate = 1.0
                sender.setImage(self.pauseImage, forState: UIControlState.Normal)
            })
        }
        
        // if paused start playing
        
        if moviePlayer.rate == 0 {
            moviePlayer.play()
            sender.setImage(pauseImage, forState: UIControlState.Normal)
        }
            
        // if not paused stop playing

        else if moviePlayer != 0 {
            moviePlayer.pause()
            sender.setImage(playImage, forState: UIControlState.Normal)
        }
    }

    @IBAction func fastForwardButton(sender: UIButton) {
        
        // set pause image to play/pause button
        
        moviePlayerEnded = false
        self.moviePlayer.rate = 2.0
        playPauseButton.setImage(pauseImage, forState: UIControlState.Normal)
    }

    @IBAction func rewindButton(sender: UIButton) {
        
        // set pause image to play/pause button
         
        moviePlayerEnded = false
        self.moviePlayer.rate = -2.0
        playPauseButton.setImage(pauseImage, forState: UIControlState.Normal)
    }
    
    @IBAction func nextStep(sender: AnyObject) {
        
        // present TestTime VC
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("TestTime") as! TestTimeViewController
        self.presentViewController(vc, animated: true, completion: nil)
        
    }
}











