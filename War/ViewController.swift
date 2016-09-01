//
//  ViewController.swift
//  War
//
//  Created by Peter Sabatini on 8/27/16.
//  Copyright © 2016 PETER SABATINI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var enemyScoreLabel: UILabel!
    
    var playerScore:Int = 0
    var enemyScore:Int = 0
    
    var cardNamesArray:[String] = ["card2", "card3", "card4", "card5",
        "card6", "card7", "card8", "card9", "card10",
        "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        let firstRandomNumber = Int(arc4random_uniform(13))
        let firstCardString:String = self.cardNamesArray[firstRandomNumber]
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        let secondRandomNumber = Int(arc4random_uniform(13))
        let secondCardString:String = self.cardNamesArray[secondRandomNumber]
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        if firstRandomNumber > secondRandomNumber {
            self.playerScore += 1
            self.playerScoreLabel.text = String(playerScore)
        } else if firstRandomNumber == secondRandomNumber {
        
        } else {
            self.enemyScore += 1
            self.enemyScoreLabel.text = String(enemyScore)
        }
    }
}

