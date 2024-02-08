//
//  ViewController.swift
//  DiceApp
//
//  Created by Zhangali Pernebayev on 04.04.2021.
//

import UIKit

class ViewController: UIViewController {

    //Properties
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceLabelView1: UILabel!
    @IBOutlet weak var diceButtonView1: UIButton!
    
    let images = [
    UIImage(named: "dice-1"),
    UIImage(named: "dice-2"),
    UIImage(named: "dice-3"),
    UIImage(named: "dice-4"),
    UIImage(named: "dice-5"),
    UIImage(named: "dice-6")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        diceImageView1.image = UIImage(named: "dice-1")
        diceImageView2.image = UIImage(named: "dice-4")
        
        diceLabelView1.text = "Кости"
        diceButtonView1.backgroundColor = UIColor.blue
    }

    // Button Tap Handler
    /*
     This is button
     tap handler
     */
    @IBAction func throwButtonTapped(_ sender: Any) {
        print("User tapped throw button")
        diceImageView1.image = images[randomImageIndex()]
        diceImageView2.image = images[randomImageIndex()]
    }
    
    func randomImageIndex() -> Int {
        return Int.random(in: 0..<images.count)
    }
}

