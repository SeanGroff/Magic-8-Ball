//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Sean Groff on 6/21/18.
//  Copyright © 2018 Sean Groff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomBallNumber: Int = 0

    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(5))
        ballImageView.image = UIImage(named: "ball\(randomBallNumber)")
    }
}

