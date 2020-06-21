//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tipPercentage: String!
    var tipWithoutPctSign: String!
    
    @IBAction func tipChanged(_ sender: UIButton) {
        sender.isSelected = true
        
        tipPercentage = sender.titleLabel!.text
        tipWithoutPctSign = tipPercentage.replacingOccurrences(of: "%", with: "", options: NSString.CompareOptions.literal, range: nil)
       
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
         print(Float(tipWithoutPctSign)! / 100)
    }
}

