//
//  ViewController.swift
//  How Many Fingers?
//
//  Created by Peter & Liz  on 2/10/15.
//  Copyright (c) 2015 P&L Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var result: UILabel!
    
    @IBOutlet var guess: UITextField!
    
    @IBAction func guessButton(sender: AnyObject) {
        
        var randomNumber = arc4random_uniform(6)
        
        var guessInt = guess.text.toInt()
        
        if  guessInt != nil {
        
            if Int(randomNumber) == guessInt {
                
                result.text = "You are correct"
                
            } else {
            
                result.text = "Nope. The correct answer was \(randomNumber)"
            }
            
        } else {
            
            result.text = "Please enter a number 0-5"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

