//
//  ViewController.swift
//  Is it Prime
//
//  Created by Bryan on 7/22/16.
//  Copyright © 2016 Bryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func isItPrime(sender: AnyObject) {
        
        let textFieldInt = Int(textField.text!)
        
        if textField != nil {
         
            
            var isPrime = true
            
            if textField! == 1 {
                
                isPrime = false
            }
            
            if textField! != 2 && textField! != 1 {
                
                for var i = 2; i < textFieldInt!; i = i + 1 {
                    
                    if textFieldInt!  % i == 0 {
                        
                        isPrime = false
                        
                    }
                    
                }
                
            }
            
            if isPrime == true {
                
                result.text = "\(textField!) is prime"
                
            } else {
                
                result.text = "\(textField!) is not prime"
                
            }
            
            
        } else {
            
            result.text = "Please enter a number"
            
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

