//
//  ViewController.swift
//  Dicee
//
//  Created by Mariecris Banez on 01/07/2017.
//  Copyright © 2017 Mariecris Banez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let hi = test
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0

    let diceArray = ["dice1","dice2","dice3", "dice4", "dice5", "dice6"]
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
        updateDiceImages()
            
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
     updateDiceImages()
    
     print(hi)
    }
    
    
    func updateDiceImages(){
    
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    
    }
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }

}

