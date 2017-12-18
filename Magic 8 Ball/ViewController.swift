//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Vanilla on 12/13/17.
//  Copyright © 2017 Digital Villa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var justLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    let ballArray = ["ball01","ball02","ball03","ball04","ball05","ball06","ball07","ball04","ball08","ball09","ball10","ball11","ball09","ball12","ball13","ball14"]
    var rndmNum : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Load main image when it launches
        imageView.image = UIImage(named:"ball00")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //button handler
    @IBAction func askBtn(_ sender: Any) {
        updateBall ()
    }
    
    // Motion handler
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBall ()
    }
    
    //main Function updater 
    func updateBall () {
        rndmNum = Int(arc4random_uniform(UInt32(ballArray.count))) //Upper bound not inclusive
        imageView.image = UIImage(named:ballArray[rndmNum])
    }
    
}

