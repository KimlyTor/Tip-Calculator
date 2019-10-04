//
//  ViewController.swift
//  tippy
//
//  Created by KimlyT. on 10/4/19.
//  Copyright © 2019 KimlyT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true) // dismiss the keyboard when tapping
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amount
        let bill = Double(billField.text!) ?? 0 // if it's not valid then it's 0
        
        //Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip and total label
        tipLabel.text = String (format: "$%.2f", tip) // display tip
        totalLabel.text = String (format: "$%.2f", total) // display total
    }
    
    
}

