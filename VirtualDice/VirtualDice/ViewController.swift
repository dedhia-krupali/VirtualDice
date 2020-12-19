//
//  ViewController.swift
//  VirtualDice
//
//  Cr/Users/krupali/Desktop/VirtualDice/VirtualDice/Base.lproj/Main.storyboardeated by Krupali Dedhia on 12/19/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    var diceArray = [#imageLiteral(resourceName: "dice-six-faces-one"),#imageLiteral(resourceName: "dice-six-faces-two"),#imageLiteral(resourceName: "dice-six-faces-three"),#imageLiteral(resourceName: "dice-six-faces-four"),#imageLiteral(resourceName: "dice-six-faces-five"),#imageLiteral(resourceName: "dice-six-faces-six")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImage1.image = diceArray[0]
        diceImage2.image = diceArray[5]
        
    }
    
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        diceArray.shuffle()
        diceImage1.image = diceArray[Int.random(in: 0...5)]
        diceArray.shuffle()
        diceImage2.image = diceArray[Int.random(in: 0...5)]
    }
    

}

