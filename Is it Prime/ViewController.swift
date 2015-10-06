//
//  ViewController.swift
//  Is it Prime
//
//  Created by Luiz Fernando Santiago on 10/3/15.
//  Copyright © 2015 Luiz Fernando Santiago. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func isItPrime(sender: AnyObject) {
        
        if let number = Int(numberTextField.text!) {
        
            var isPrime = true
        
            if number == 1{
            
                isPrime = false
            }
        
            if number != 2 && number != 1 {
        
                for var i = 2; i < number; i++ {
                
                    if number % i == 0 {
                    
                        isPrime = false
                
                    }
                }
            }
            if isPrime{
                resultLabel.text = "\(number) is Prime!"
            
            }else{
                resultLabel.text = "\(number) is not Prime :("
            }
        } else{
            resultLabel.text = "please enter a whole number"
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

