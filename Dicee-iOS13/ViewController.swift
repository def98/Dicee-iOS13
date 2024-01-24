//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOutlets allow me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceImages = [
        UIImage( imageLiteralResourceName: "DiceOne"),
        UIImage( imageLiteralResourceName: "DiceTwo"),
        UIImage( imageLiteralResourceName: "DiceThree"),
        UIImage( imageLiteralResourceName: "DiceFour"),
        UIImage( imageLiteralResourceName: "DiceFive"),
        UIImage( imageLiteralResourceName: "DiceSix")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonWasPressed(_ sender: Any) {
        // can also use .randomElement()
        diceImageView1.image = diceImages[Int.random(in: 0...5)]
        diceImageView2.image = diceImages[Int.random(in: 0...5)]
        
    }
}
