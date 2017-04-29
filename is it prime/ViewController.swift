//
//  ViewController.swift
//  is it prime
//
//  Created by Kees van der vlis on 27/04/2017.
//  Copyright © 2017 Kees van der vlis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var primeTextInput: UITextField!
    
    @IBAction func primeButtonPressed(_ sender: Any) {
        var primeInt : Int?
        var isPrime = true
        
        primeInt = Int(primeTextInput.text!)
        if primeInt == nil {
            primeTextInput.text = ""
            primeTextInput.placeholder = "Please enter a whole positive Number"
        } else {
            if primeInt! == 1 {
                primeLabel.text = "\(primeInt!) is not a prime number!"
            } else {
                var i = 2
                while i < primeInt! {
                    if primeInt! % i == 0 {
                        isPrime = false
                    }
                    i = i + 1
                }
                if isPrime == true {
                  primeLabel.text = "\(primeInt!) is a prime number!"
                } else {
                  primeLabel.text = "\(primeInt!) is not a prime number!"
                }
            }
            
        }
        
        
    }
    
    @IBOutlet weak var primeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        primeLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

